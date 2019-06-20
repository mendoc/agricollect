import 'package:agricollect/config.dart';
import 'package:agricollect/route/personal_campaign.dart';
// import 'package:agricollect/route/inscription.dart';
// import 'package:agricollect/route/reset_page.dart';
import 'package:flutter/material.dart';
import 'config.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: mainColor),
      title: 'AGRI COLLECT',
      home: PersonalCampaign(),
    );
  }
}
