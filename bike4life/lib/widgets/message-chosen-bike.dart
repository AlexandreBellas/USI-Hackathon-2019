import 'package:flutter/material.dart';

class PopUpBike extends StatefulWidget {
  final String bikeName;

  PopUpBike(this.bikeName);

  @override
  _PopUpBikeState createState() => _PopUpBikeState();
}

class _PopUpBikeState extends State<PopUpBike> {
  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: new Wrap(
              children: <Widget>[
                Text(
                  'You selected the ' + widget.bikeName,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ),
                new ListTile(
                  leading: new Icon(Icons.directions_bike),
                  title: new Text('Get the bike'),
                  onTap: null,
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      direction: DismissDirection.down,
      key: ValueKey("adjsghfs"),
      child: new ListTile(
        leading: new Icon(Icons.directions_bike),
        title: new Text('Get the bike'),
        onTap: null,
      ),
    );
  }
}
