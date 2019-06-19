import 'package:flutter/material.dart';
import 'package:agricollect/config.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 30.0),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
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
              padding: EdgeInsets.symmetric(vertical: 12.0),
              color: mainColor,
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  Text(
                    "CAMPAGNES",
                    style: TextStyle(color: Colors.white,
                    fontFamily: "Roboto Bold", fontSize: 15.0),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
