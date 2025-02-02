import 'package:bike4life/screens/map_screen.dart';
import 'package:flutter/material.dart';
import './widgets/profile.dart';
import './widgets/ranking.dart';
import './widgets/coupons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Bike4Life';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.green[900],
        accentColor: Colors.green[900],
        canvasColor: Colors.green[50],
        backgroundColor: Colors.greenAccent[800],

      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  static List<Widget> _widgetOptions = <Widget>[
    MapScreen(),
    Coupons(),
    Ranking(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bike4Life'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_bike),
            title: Text('Find bikes'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            title: Text('Coupons'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.format_list_numbered),
            title: Text('Rankings'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green[800],
        unselectedItemColor: Colors.black45,
        onTap: _onItemTapped,
      ),
    );
  }
}
