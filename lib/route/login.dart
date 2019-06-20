import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Column(
              children: <Widget>[
                Text(
                  'BIENVENUE',
                  style: TextStyle(fontSize: 40, color: Color(0xff406918)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Image.asset("assets/img/logo.png", width: 240),
                ),
                Form(
                  child: Column(
                    children: <Widget>[
                      TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              hintText: 'Pseudo ou Email')),
                      TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              hintText: 'Mot de passe')),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
