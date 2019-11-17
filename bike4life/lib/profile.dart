import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              width: 60.0,
              height: 60.0,
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: new NetworkImage("https://i.imgur.com/BoN9kdC.png"),
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Text('Aida'),
                Text('Gasanova'),
              ],
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Text(
              'xp',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('2000'),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              width: 30.0,
              height: 30.0,
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: new NetworkImage(
                      "https://previews.123rf.com/images/rastudio/rastudio1802/rastudio180200842/96362871-gold-dollar-coin-circle-coin-with-dollar-symbol-isolated-on-transparent-background-means-of-payment-.jpg"),
                ),
              ),
            ),
            Text('31'),
          ],
        ),
        Text('#20'),
      ],
    );
  }
}
