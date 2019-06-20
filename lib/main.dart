import 'package:flutter/material.dart';
import 'package:agricollect/route/collect1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff409618),
      ),
      debugShowCheckedModeBanner: false,
      title: 'AGRI COLLECT',
      home: Collect1(),
    );
  }
}
