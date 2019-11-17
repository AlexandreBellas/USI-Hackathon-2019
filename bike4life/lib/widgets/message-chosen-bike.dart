import 'package:flutter/material.dart';

class PopUpBike extends StatefulWidget {
  final String bikeName;

  PopUpBike(this.bikeName);

  @override
  _PopUpBikeState createState() => _PopUpBikeState();
}

class _PopUpBikeState extends State<PopUpBike> {
  

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      direction: DismissDirection.down,
      key: ValueKey("adjsghfs"),
      child: new ListTile(
        leading: new Icon(Icons.directions_bike),
        title: new Text('Get the bike'),
        // onTap: () => _settingModalBottomSheet(context),
      ),
    );
  }
}
