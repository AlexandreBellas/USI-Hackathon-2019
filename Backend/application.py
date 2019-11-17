#Flask
from flask import Flask, render_template, request, jsonify
# from preprocessing import preProcessing
#Firebase
import os
import firebase_admin
from firebase_admin import credentials, auth, db
# importing the requests library 
import requests 
import datetime
from bs4 import BeautifulSoup

app = Flask(__name__)

@app.route("/multscore", methods=["GET"])
# year-month-day
# datetime
def multscore():
	if request.method == "GET":

		#... => receive latitude, longitude
		# calculate datetime
		# get traffic index from data (line 156)
		# return multiplier score
		
		data = request.args
		# print(data['latitude'])
		# print(data['longitude'])
		# data ={}
		# data['latitude'] =69
		# data['longitude'] =100
		
		# format http://34.65.91.216/mother/traffic/?lat=69&lon=100&da=2019-06-01&ho=17
		
		
		# api-endpoint 
		URL = " http://34.65.91.216/mother/traffic/"
		# location given here 
		latitude = data['latitude']
		longitude = data['longitude']
		
		# current datetime
		# date_time = datetime.datetime.now()
		# day = date_time.strftime('%Y-%m-%d')
		# hour = date_time.hour
		day = "2019-07-26"
		hour = "18"
		
		# defining a params dict for the parameters to be sent to the API 
		payload = {'lat':longitude, 'lon':latitude, 'da':day, 'ho':hour } 
		
		# sending get request and saving the response as response object 
		response = requests.get(url = URL, params = payload) 
		
		print(response.text.split("\n")[46])
  
		# extracting data in json format 
		data = response.text.split('\n')[46]
		#index = BeautifulSoup('<div class="col4-c margint"></div>')
		
		multscore = float(data[4:])/5
				
		return jsonify(
			multscore=multscore
		)
	
	else:
		return "Error creating firebase object."
	

if __name__ == "__main__":
    port = int(os.environ.get("PORT", 5000))
    app.run(host='0.0.0.0', port=port)