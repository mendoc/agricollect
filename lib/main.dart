<<<<<<< HEAD
// import 'package:agricollect/route/splashscreen.dart';
import 'package:agricollect/route/reset_page.dart';
=======
import 'package:agricollect/config.dart';
import 'package:agricollect/route/splashscreen.dart';
>>>>>>> bcbe9f880a2b0d1f67751e44074118d9f748dc19
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
      home: Reset(),
    );
  }
}
