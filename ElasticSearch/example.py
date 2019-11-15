from datetime import datetime
from elasticsearch import Elasticsearch
from elasticsearch import helpers
import pandas

csv_file = pandas.DataFrame(pandas.read_csv("Dati-meteo_Lugano.csv", sep = ",", header = 0, index_col = False))
csv_file.rename(columns={'Data e ora':'@timestamp',
                          'Temp. [°C]':'temp_celcius',
                          'Prec. [mm]':'precipitation_mm',
                          'Data':'date',
                          'Ora':'time'}, 
                 inplace=True)
print(csv_file)

data_string = csv_file.to_json(orient = "records", date_format = "epoch", double_precision = 10, force_ascii = True, date_unit = "ms", default_handler = None)
data_json = eval(data_string)
print(data_json[0])

actions= []
for num, json_doc in enumerate(data_json):
    actions.append({"_id": num + 1, "_index": "meteo", "_source": json_doc})
print(actions[0])

METEO_MAPPING = {
  "mappings" : {
      "properties" : {
        "@timestamp" : {
          "type" : "date",
          "format": "dd.MM.yyyy HH:mm"
        },
        "date" : {
          "type" : "date",
          "format": "dd.MM.yyyy"
        },
        "precipitation_mm" : {
          "type" : "float"
        },
        "temp_celcius" : {
          "type" : "float"
        },
        "time" : {
          "type" : "keyword"
      }
    }
  }
}

es.indices.delete(index='meteo', ignore=404)

es.indices.create(
    index="meteo",
    body=METEO_MAPPING
)

es = Elasticsearch()
helpers.bulk(es, actions)

csv_file = pandas.DataFrame(pandas.read_csv("stations.csv", sep = ",", header = 0, index_col = False))
csv_file.rename(columns={'latitude':'lat', 'longitude':'lon'}, inplace=True)
print(csv_file)

data_string = csv_file.to_json(orient = "records", date_format = "epoch", double_precision = 10, force_ascii = True, date_unit = "ms", default_handler = None)
data_json = eval(data_string)
print(data_json[0])

actions= []
for json_doc in data_json:
    actions.append({"_id": json_doc["id"], "_index": "stations", "_source": {"name": json_doc["name"], "address": json_doc["address"], "zip": json_doc["zip"], "city": json_doc["city"], "location": { "lat": json_doc["lat"], "lon": json_doc["lon"]}}})
print(actions[0])

STATIONS_MAPPING = {
  "mappings" : {
      "properties" : {
        "name" : {
          "type" : "keyword"
        },
        "address" : {
          "type" : "text"
        },
        "zip" : {
          "type" : "keyword"
        },
        "city" : {
          "type" : "keyword"
        },
        "location" : {
          "type" : "geo_point"
      }
    }
  }
}

es.indices.create(
    index="stations",
    body=STATIONS_MAPPING
)

es = Elasticsearch()
helpers.bulk(es, actions)