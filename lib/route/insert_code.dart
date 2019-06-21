import 'package:agricollect/route/password_config.dart';
import 'package:flutter/material.dart';

class InsertCode extends StatefulWidget {
  @override
  _InsertCodeState createState() => _InsertCodeState();
}

class _InsertCodeState extends State<InsertCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 1),
              child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  "assets/img/LOGOREFONTE.png",
                  width: 200.0,
                  height: 200.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 45),
              child: Text(
                'REINITIALISEZ VOTRE MOT DE PASSE',
                style: TextStyle(
                  fontSize: 19,
                  color: Color(0xff3a783a),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 45),
              child: Text(
                'Un code de confirmation vous a été envoyer à\n votre adresse mail, veuillez l\'insérer.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xff232222),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
                child: TextFormField(
                  autofocus: true,
                  decoration: InputDecoration(
                      labelText: 'Entrez le code',
                      prefixIcon: Icon(
                        Icons.lock,
                      )),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 10),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  onPressed: () {
                    Navigator.pushReplacement(
                      //pushReplacement represante un allé simple la page connexion va donc etre fermer une fois arriver
                      context,
                      MaterialPageRoute(builder: (context) => NewPassword()),
                    );
                  },
                  color: Color(0xffbf3b02),
                  child: Text(
                    "VALIDER",
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
    );
  }
}
