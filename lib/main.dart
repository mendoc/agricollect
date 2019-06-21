<<<<<<< HEAD
import 'package:agricollect/config.dart';
import 'package:agricollect/route/public_campaign.dart';
// import 'package:agricollect/route/inscription.dart';
// import 'package:agricollect/route/reset_page.dart';
=======
>>>>>>> 4d8f640e6d865fb4bc5c82d8d88009aa1c6f4904
import 'package:flutter/material.dart';
import 'package:agricollect/route/collectprix.dart';
import 'package:agricollect/config.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: mainColor),
      title: 'AGRI COLLECT',
<<<<<<< HEAD
      home: PublicCampaign(),
=======
      home: CollectPrix(),
      
>>>>>>> 4d8f640e6d865fb4bc5c82d8d88009aa1c6f4904
    );
  }
}


























