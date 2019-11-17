import 'package:flutter/material.dart';

class Coupons extends StatelessWidget {
  final COLOR_BACKGROUND_LETTERS = Colors.black;
  
  const Coupons();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
              'Restaurants',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: COLOR_BACKGROUND_LETTERS,
                fontSize: 48,
              ),
            ),
            width: double.infinity,
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              
              margin: EdgeInsets.all(15),
              color: Colors.orange,
              child: Image.asset('assets/images/spontini.jpg'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              margin: EdgeInsets.all(15),
              color: Colors.orange,
              child: Image.asset('assets/images/uber.jpg'),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
              'Markets',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: COLOR_BACKGROUND_LETTERS,
                fontSize: 48,
              ),
            ),
            width: double.infinity,
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              margin: EdgeInsets.all(15),
              color: Colors.orange,
              child: Image.asset('assets/images/carrefour.jpg'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              margin: EdgeInsets.all(15),
              color: Colors.orange,
              child: Image.asset('assets/images/esselunga.jpg'),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
              'Transportation',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: COLOR_BACKGROUND_LETTERS,
                fontSize: 48,
              ),
            ),
            width: double.infinity,
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              margin: EdgeInsets.all(15),
              color: Colors.orange,
              child: Image.asset('assets/images/trenord.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}
