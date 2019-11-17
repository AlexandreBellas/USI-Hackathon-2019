import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../models/place.dart';
import '../screens/end_route_screen.dart';

class MapScreen extends StatefulWidget {
  final PlaceLocation initialLocation;

  MapScreen({
    this.initialLocation =
        const PlaceLocation(latitude: 46.0101, longitude: 8.9600),
  });

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  String _nameBikeChoosen;
  double userXP = 1500;

  final bikesLocs = {
    {
      'name': 'Bike 1',
      'latitude': 46.01120999848508,
      'longitude': 8.959468267858028
    },
    {
      'name': 'Bike 2',
      'latitude': 46.01073310902711,
      'longitude': 8.961896002292633
    },
    {
      'name': 'Bike 3',
      'latitude': 46.00928006110926,
      'longitude': 8.958561010658741
    },
    {
      'name': 'Bike 4',
      'latitude': 46.00736659026086,
      'longitude': 8.963408097624779
    },
    {
      'name': 'Bike 5',
      'latitude': 46.0101565516331,
      'longitude': 8.960003703832626
    },
  };

  final Map<String, Marker> _markers = {};

  // Future<http.Response> fetchPost() {
  //   return http.get('https://jsonplaceholder.typicode.com/posts/1');
  // }

  // void _selectLocation(LatLng position) {
  //   setState(() {
  //     _pickedLocation = position;
  //   });

  //   print(position.latitude);
  //   print(position.longitude);
  // }

  // Future<Uint8List> getBytesFromAsset(String path, int width) async {
  //   ByteData data = await rootBundle.load(path);
  //   ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(), targetWidth: width);
  //   ui.FrameInfo fi = await codec.getNextFrame();
  //   return (await fi.image.toByteData(format: ui.ImageByteFormat.png)).buffer.asUint8List();
  // }

  Future<void> _onTapBike(bikePos) async {
    setState(() {
      _nameBikeChoosen = bikePos['name'];
    });

    print(_nameBikeChoosen);
  }

  Future<void> _onMapCreated(GoogleMapController gmc) async {
    setState(() {
      _markers.clear();
      for (final bikePos in bikesLocs) {
        // final Uint8List markerIcon = await getBytesFromAsset('assets/images/flutter.png', 100);
        final marker = Marker(
          markerId: MarkerId(bikePos['name']),
          position: LatLng(bikePos['latitude'], bikePos['longitude']),
          // icon: BitmapDescriptor.fromBytes(markerIcon),
          // icon: BitmapDescriptor.fromAsset('../../assets/images/bike-icon.png'),
          icon: BitmapDescriptor.defaultMarkerWithHue(30),
          infoWindow: InfoWindow(
              title: bikePos['name'],
              snippet: "Multiplication score: 30%",
              onTap: () {
                _onTapBike(bikePos);
                _settingModalBottomSheet(context, bikePos);
              }),
        );
        _markers[bikePos['name']] = marker;
      }
    });
  }

  void _startAndEndRoute(bikePos) {
    //calculation of distance
    //...
    //retrieving the multiplication score
    //...

    var multScore = 0.3;
    var distance = 100; //meters
    userXP += multScore * distance;

    Navigator.push(
      context,
      MaterialPageRoute(
        fullscreenDialog: true,
        builder: (ctx) => EndRouteScreen(
          distance.toString(),
          multScore.toString(),
          userXP.toString(),
        ),
      ),
    );
  }

  void _settingModalBottomSheet(context, bikeData) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          child: new Wrap(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  'You selected the ' + bikeData['name'],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                ),
              ),
              new ListTile(
                leading: new Icon(Icons.directions_bike),
                title: new Text('Get the bike'),
                onTap: () {
                  _startAndEndRoute(bikeData);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GoogleMap(
          initialCameraPosition: CameraPosition(
            target: LatLng(
              widget.initialLocation.latitude,
              widget.initialLocation.longitude,
            ),
            zoom: 16,
          ),
          myLocationEnabled: true,
          onMapCreated: _onMapCreated,
          // onTap: (latlng){
          //   for (var b in bikesLocs){
          //     if(b['latitude'] == latlng.latitude && b['longitude'] == latlng.longitude){
          //       _onTapBike(b);
          //       break;
          //     }
          //   }
          // },
          // onLongPress: (latlng) async {
          //   for (var b in bikesLocs){
          //     if(b['latitude'] == latlng.latitude && b['longitude'] == latlng.longitude){
          //       await _onTapBike(b);
          //       _settingModalBottomSheet(context, _nameBikeChoosen);
          //       break;
          //     }
          //   }
          // },
          markers: _markers.values.toSet(),
        ),
      ],
    );
  }
}

//PopUpBike(_nameBikeChoosen)
