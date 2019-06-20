import 'package:agricollect/config.dart';
import 'package:agricollect/route/insert_code.dart';
// import 'package:agricollect/route/inscription.dart';
// import 'package:agricollect/route/reset_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: mainColor),
      title: 'AGRI COLLECT',
      home: InsertCode(),
    );
  }
}
