import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(30),
              width: 120.0,
              height: 120.0,
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: new NetworkImage("https://i.imgur.com/BoN9kdC.png"),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 55),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Aida',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                  Text(
                    'Gasanova',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 30),
              child: Text(
                'XP',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 70),
              ),
            ),
            Text(
              '2000',
              style: TextStyle(fontSize: 50),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(right: 20, top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 20),
                width: 80.0,
                height: 80.0,
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: new NetworkImage(
                        "https://previews.123rf.com/images/rastudio/rastudio1802/rastudio180200842/96362871-gold-dollar-coin-circle-coin-with-dollar-symbol-isolated-on-transparent-background-means-of-payment-.jpg"),
                  ),
                ),
              ),
              Text(
                '31',
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(50),
          child: Text(
            '#20',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 70
            ),
          ),
        ),
      ],
    );
  }
}
