import 'package:flutter/material.dart';

class EndRouteScreen extends StatelessWidget {
  final String distance;
  final String multScore;
  final String xpWon;

  EndRouteScreen(this.distance, this.multScore, this.xpWon);

  void _onPressed(context){
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'End of route',
      home: Scaffold(
        appBar: AppBar(
          title: Text('End of route'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(30),
                    child: Text(
                      'Congratulations!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      'You got',
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                  ),
                  Text(
                    distance + ' meters riding',
                    style: TextStyle(
                      fontSize: 32,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      'in a multiplication score of ' + multScore,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  Text(
                    'wining ' + xpWon + ' XP',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.all(20),
                alignment: Alignment.bottomCenter,
                child: RaisedButton(
                  child: Text('Continue'),
                  onPressed: () => _onPressed(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
