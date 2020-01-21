import 'package:flutter/material.dart';

import 'Tab1.dart';
import 'Tab2.dart';
import 'Tab3.dart';
import 'Tab4.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
    @override 
    Widget build(BuildContext buildContext) {
        final tabController = new DefaultTabController(
            length: 4,
            child: new Scaffold(
                appBar: new AppBar(
                    title: new Text("Tab"),
                    bottom: new TabBar(
                        indicatorColor: Colors.black,
                        indicatorWeight: 2,
                        tabs: <Widget>[
                            new Tab(icon: new Icon(Icons.home), text: "Home",),
                            new Tab(icon: new Icon(Icons.group), text: "Group",),
                            new Tab(icon: new Icon(Icons.chat_bubble), text: "Chat",),
                            new Tab(icon: new Icon(Icons.cloud_queue), text: "Cloud",),
                        ],
                    ),
                ),
                body: new TabBarView(
                    children: <Widget>[
                        new Tab1(),
                        new Tab2(),
                        new Tab3(),
                        new Tab4()
                    ],
                ),
            ),
        );
        return new MaterialApp(
            title: "My App",
            home: tabController
        );
    }
}