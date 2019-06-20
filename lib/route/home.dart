import 'package:flutter/material.dart';
import 'package:agricollect/config.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 30.0),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.menu,
                    size: 35.0,
                    color: mainColor,
                  ),
                  Image.asset(
                    "assets/img/logo.png",
                    width: 100.0,
                  ),
                  Icon(
                    Icons.search,
                    size: 35.0,
                    color: Color(0xFF3a783a),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 12.0),
              color: mainColor,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "CAMPAGNES",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Roboto Bold",
                        fontSize: 15.0),
                  ),
                  Container(
                    child: TabBar(
                      controller: _controller,
                      tabs: [
                        Tab(
                          text: 'Publiques',
                        ),
                        Tab(
                          text: 'Créées',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 100.0,
              child: TabBarView(
                controller: _controller,
                children: <Widget>[
                  Center(child: Text("Publiques")),
                  Center(child: Text("Créées")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

class TabbedAppBarSample extends StatefulWidget {
  @override
  _TabbedAppBarSampleState createState() => _TabbedAppBarSampleState();
}

class _TabbedAppBarSampleState extends State<TabbedAppBarSample>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Expanded(
              child: Icon(Icons.verified_user),
            ),
            TabBarView(
              controller: _controller,
              children: choices.map((Choice choice) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ChoiceCard(choice: choice),
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: choices.length, vsync: this);
  }
}

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'CAR', icon: Icons.directions_car),
  const Choice(title: 'BICYCLE', icon: Icons.directions_bike),
  const Choice(title: 'BOAT', icon: Icons.directions_boat),
  const Choice(title: 'BUS', icon: Icons.directions_bus),
  const Choice(title: 'TRAIN', icon: Icons.directions_railway),
  const Choice(title: 'WALK', icon: Icons.directions_walk),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(choice.icon, size: 128.0, color: textStyle.color),
            Text(choice.title, style: textStyle),
          ],
        ),
      ),
    );
  }
}
