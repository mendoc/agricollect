import 'package:agricollect/route/new_campagne.dart';
import 'package:flutter/material.dart';
import 'config.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: mainColor),
      title: 'AGRI COLLECT',
      home: NewCampagne()
    );
  }
}
