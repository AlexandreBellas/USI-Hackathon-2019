import 'package:flutter/material.dart';

class Coupons extends StatelessWidget {
  const Coupons();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 200.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 160.0,
            child: Image(
              image: AssetImage(
                "assets/spontini.jpg",
              ),
            ),
          ),
          Container(
            width: 160.0,
            child: Image(
              image: AssetImage(
                "assets/uber.jpg",
              ),
            ),
          ),
          Container(
            width: 160.0,
            color: Colors.green,
          ),
          Container(
            width: 160.0,
            color: Colors.yellow,
          ),
          Container(
            width: 160.0,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}
