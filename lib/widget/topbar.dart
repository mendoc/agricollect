import 'package:agricollect/config.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 10.0, horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            child: Icon(
              Icons.arrow_back,
              size: 35.0,
              color: mainColor,
            ),
            onTap: () {
              Navigator.of(context).pop();
            },
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
    );
  }
}
