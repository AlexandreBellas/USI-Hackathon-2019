import 'package:flutter/material.dart';

class Ranking extends StatelessWidget {
  const Ranking();
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text("Ranking"),
          titleSpacing: 15.0,
          expandedHeight: 50.0,
          floating: false,
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              ListTile(
                leading: Icon(Icons.looks_one, color: Colors.red.shade400),
                title: Text(
                  "Wade Lopez",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                trailing: Text(
                  '4320 XP',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.looks_two, color: Colors.red.shade400),
                title: Text(
                  "Isabel Allen",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                trailing: Text('4200 XP',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    )),
              ),
              ListTile(
                leading: Icon(Icons.looks_3, color: Colors.red.shade400),
                title: Text(
                  "Stella Green",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                trailing: Text('4042 XP',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    )),
              ),
              ListTile(
                  leading: Text('4'),
                  title: Text("James Smith"),
                  trailing: Text('3992 XP')),
              ListTile(
                  leading: Text('5'),
                  title: Text("Michael Smith"),
                  trailing: Text('3987 XP')),
              ListTile(
                  leading: Text('6'),
                  title: Text("Robert Smith"),
                  trailing: Text('3825 XP')),
              ListTile(
                  leading: Text('7'),
                  title: Text("Maria Garcia"),
                  trailing: Text('3620 XP')),
              ListTile(
                  leading: Text('8'),
                  title: Text("David Smith"),
                  trailing: Text('3419 XP')),
              ListTile(
                  leading: Text('9'),
                  title: Text("Maria Rodriguez"),
                  trailing: Text('3212 XP')),
              ListTile(
                  leading: Text('10'),
                  title: Text("Mary Smith"),
                  trailing: Text('2691 XP')),
              ListTile(
                  leading: Text('11'),
                  title: Text("Maria Hernandez"),
                  trailing: Text('2495 XP')),
              ListTile(
                  leading: Text('12'),
                  title: Text("Maria Martinez"),
                  trailing: Text('2310 XP')),
              ListTile(
                  leading: Text('13'),
                  title: Text("James Johnson"),
                  trailing: Text('2109 XP')),
              ListTile(
                  leading: Text('14'),
                  title: Text("Stella Green"),
                  trailing: Text('1952 XP')),
              ListTile(
                  leading: Text('15'),
                  title: Text("Maria Garcia"),
                  trailing: Text('1856 XP')),
              ListTile(
                  leading: Text('16'),
                  title: Text("Michael Smith"),
                  trailing: Text('1720 XP')),
              ListTile(
                  leading: Text('17'),
                  title: Text("Stella Green"),
                  trailing: Text('1398 XP')),
              ListTile(
                  leading: Text('18'),
                  title: Text("James Johnson"),
                  trailing: Text('1348 XP')),
              ListTile(
                  leading: Text('19'),
                  title: Text("Maria Garcia"),
                  trailing: Text('1005 XP')),
              ListTile(
                  leading: Text('20'),
                  title: Text("Michael Smith"),
                  trailing: Text('943 XP')),
              ListTile(
                  leading: Text('21'),
                  title: Text("Aida Gasanova"),
                  trailing: Text('742 XP')),
              ListTile(
                  leading: Text('22'),
                  title: Text("Maria Garcia"),
                  trailing: Text('295 XP')),
              ListTile(
                  leading: Text('23'),
                  title: Text("James Johnson"),
                  trailing: Text('153 XP')),
              ListTile(
                  leading: Text('24'),
                  title: Text("Stella Green"),
                  trailing: Text('72 XP')),
              ListTile(
                  leading: Text('25'),
                  title: Text("James Johnson"),
                  trailing: Text('0 XP')),
            ],
          ),
        ),
      ],
    );
  }
}
