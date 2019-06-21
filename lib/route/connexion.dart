import 'dart:convert';

import 'package:agricollect/config/endpoints.dart';
import 'package:agricollect/route/inscription.dart';
import 'package:agricollect/util/master.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:agricollect/config.dart';
import 'package:agricollect/route/home.dart';
import 'package:agricollect/route/reset_page.dart';

class Connexion extends StatefulWidget {
  @override
  _ConnexionState createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {
  bool processing = false;

  final _formKey = GlobalKey<FormState>();
  Map<String, dynamic> params = {};

  void toggleProcessing() {
    setState(() {
      processing = !processing;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              color: mainColor.withOpacity(0.1),
            ),
            Container(
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 100, left: 25, right: 25),
                          child: Text(
                            'BIENVENUE',
                            style: TextStyle(
                              fontSize: 35.0,
                              fontWeight: FontWeight.bold,
                              color: mainColor,
                            ),
                          ),
                        ),
                      ),
                      Center(
                          child: Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Container(
                          child: Image.asset(
                            'assets/img/logo.png',
                            width: 200,
                          ),
                        ),
                      )),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, left: 25, right: 25),
                                child: TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                      labelText: 'Email',
                                      prefixIcon: Icon(
                                        Icons.email,
                                      )),
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return 'Veuillez renseigner votre adresse mail';
                                    }
                                    params["email"] = value;
                                    return null;
                                  },
                                ),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, left: 25, right: 25),
                                child: TextFormField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    labelText: 'Mot de passe',
                                    prefixIcon: Icon(
                                      Icons.lock,
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return 'Veuillez renseigner votre mot de passe';
                                    }
                                    params["password"] = value;
                                    return null;
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 25.0),
                              child: (!processing)
                                  ? Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 20),
                                      child: RaisedButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30.0)),
                                        onPressed: () {
                                          if (_formKey.currentState
                                              .validate()) {
                                            toggleProcessing();
                                            sendInfos(params);
                                          }
                                        },
                                        color: Color(0xffbf3b02),
                                        child: Text(
                                          "SE CONNECTER",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    )
                                  : CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                          Colors.green[800]),
                                    ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              // Navigator.push permet de mettre une interface au dessus d'une autre et represente un aller avec un possible retour
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Inscription()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Center(
                              child: Text("Pas encore de compte ? S'inscrire",
                                  style: TextStyle(color: Color(0xff409618))),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              //pushReplacement represante un allé simple la page connexion va donc etre fermer une fois arriver
                              context,
                              MaterialPageRoute(builder: (context) => Reset()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Center(
                              child: Text("Mot de passe oublié ?",
                                  style: TextStyle(color: Color(0xff409618))),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void sendInfos(Map<String, dynamic> params) {
    print(params);
    post(CONNEXION_URL, params).then((res) {
      Map<String, dynamic> response = json.decode(res.body);
      print("Résultat de la requête : $response");
      if (response != null) {
        if (response["erreur"]) {
          showMessage(context, response["message"]);
        } else {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ),
          );
        }
      } else {
        showMessage(context, "Erreur inconnue");
      }
      toggleProcessing();
    }).catchError((e) {
      print(e);
      showMessage(
          context, "Une erreur s'est produite. Veuillez réessayer plus tard.");
      toggleProcessing();
    }).timeout(
      Duration(seconds: 5),
      onTimeout: () {
        showMessage(context,
            "Pas de réponse. Vérifiez votre connexion internet et réessayez s'il vous plaît.");
        toggleProcessing();
      },
    );
  }
}
