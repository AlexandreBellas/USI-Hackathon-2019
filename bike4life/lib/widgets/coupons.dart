import 'package:flutter/material.dart';

class Coupons extends StatelessWidget {
  const Coupons();
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: <Widget>[
      SliverPadding(
            padding: EdgeInsets.all(16.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  Card(
                    child: Text('data'),
                  ),
                  Card(
                    child: Text('data'),
                  ),
                  Card(
                    child: Text('data'),
                  ),
                  Card(
                    child: Text('data'),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 100.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    width: 100.0,
                    child: Card(
                      child: Text('data'),
                    ),
                  );
                },
              ),
            ),
          ),
    ]);
  }
}