import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

Future<Response> post(String url, params) {
  var response = http.post(url, body: params);
  return response;
}

Future<Response> get(String url) {
  var response = http.get(url);
  print("Requete : " + response.toString());
  return response;
}

void showMessage(BuildContext context, String message) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Text(message),
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              "Fermer",
              style: TextStyle(
                  fontFamily: "Raleway",
                  color: Colors.green[800],
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      );
    },
  );
}
