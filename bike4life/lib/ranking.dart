import 'package:flutter/material.dart';

class Ranking extends StatelessWidget {
  const Ranking();
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text("Ranking"),
          titleSpacing: 0.0,
          expandedHeight: 90.0,
          floating: false,
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              ListTile(
                leading: Icon(Icons.looks_one, color: Colors.red.shade400),
                title: Text("Wade Lopez"),
              ),
              ListTile(
                  leading: Icon(Icons.looks_two, color: Colors.red.shade400),
                  title: Text("Isabel Allen")),
              ListTile(
                  leading: Icon(Icons.looks_3, color: Colors.red.shade400),
                  title: Text("Stella Green")),
              ListTile(leading: Text('4'), title: Text("James Smith")),
              ListTile(leading: Text('5'), title: Text("Michael Smith")),
              ListTile(leading: Text('6'), title: Text("Robert Smith")),
              ListTile(leading: Text('7'), title: Text("Maria Garcia")),
              ListTile(leading: Text('8'), title: Text("David Smith")),
              ListTile(leading: Text('9'), title: Text("Maria Rodriguez")),
              ListTile(leading: Text('10'), title: Text("Mary Smith")),
              ListTile(leading: Text('11'), title: Text("Maria Hernandez")),
              ListTile(leading: Text('12'), title: Text("Maria Martinez")),
              ListTile(leading: Text('13'), title: Text("James Johnson")),
              ListTile(leading: Text('14'), title: Text("Stella Green")),
              ListTile(leading: Text('15'), title: Text("Maria Garcia")),
              ListTile(leading: Text('16'), title: Text("Michael Smith")),
              ListTile(leading: Text('17'), title: Text("Stella Green")),
              ListTile(leading: Text('18'), title: Text("James Johnson")),
              ListTile(leading: Text('19'), title: Text("Maria Garcia")),
              ListTile(leading: Text('20'), title: Text("Michael Smith")),
              ListTile(leading: Text('21'), title: Text("Aida Gasanova")),
              ListTile(leading: Text('22'), title: Text("Maria Garcia")),
              ListTile(leading: Text('23'), title: Text("James Johnson")),
              ListTile(leading: Text('24'), title: Text("Stella Green")),
              ListTile(leading: Text('25'), title: Text("James Johnson")),
            ],
          ),
        ),
      ],
    );
  }
}
