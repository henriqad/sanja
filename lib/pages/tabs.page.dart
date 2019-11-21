import 'package:flutter/material.dart';
import 'package:sanja/pages/list.page.dart';
import 'package:sanja/pages/map.page.dart';
import 'package:sanja/pages/user.page.dart';

class TabsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.dashboard)),
                Tab(icon: Icon(Icons.map)),
                Tab(
                  icon: Icon(Icons.account_circle),
                )
              ],
            ),
            title: Text('sanja eventos'),
          ),
          body: TabBarView(
            children: <Widget>[
              ListPage(),
              MapPage(),
              UserPage(),
            ],
          ),
        ),
      ),
    );
  }
}
