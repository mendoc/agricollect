import 'package:agricollect/route/inscription.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, left: 25, right: 25),
                              child: TextFormField(
                                autofocus: true,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    labelText: 'Email',
                                    prefixIcon: Icon(
                                      Icons.email,
                                    )),
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, left: 25, right: 25),
                              child: TextFormField(
                                autofocus: true,
                                obscureText: true,
                                decoration: InputDecoration(
                                  labelText: 'Mot de passe',
                                  prefixIcon: Icon(
                                    Icons.lock,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0)),
                                onPressed: () {
                                  Navigator.push(
                                      // Navigator.push permet de mettre une interface au dessus d'une autre
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomeScreen()));
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
    );
  }
}
