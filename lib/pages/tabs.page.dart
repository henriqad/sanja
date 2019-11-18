import 'package:flutter/material.dart';
import 'package:sanja/pages/dashboard.page.dart';
import 'package:sanja/pages/home.page.dart';
import 'package:sanja/pages/maps.page.dart';

class TabsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: <Widget>[
          HomePage(),
          MapsPage(),
          DashboardPage(),
        ],
      ),
      bottomNavigationBar: new TabBar(
        tabs: <Widget>[
          Tab(icon: new Icon(Icons.home)),
          Tab(icon: new Icon(Icons.map)),
          Tab(icon: new Icon(Icons.dashboard)),
        ],
        labelColor: Theme.of(context).primaryColor,
        unselectedLabelColor: Colors.black38,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
