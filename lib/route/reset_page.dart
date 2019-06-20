import 'package:flutter/material.dart';

class Reset extends StatefulWidget {
  @override
  _ResetState createState() => _ResetState();
}

class _ResetState extends State<Reset> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 55),
            child: Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
              "assets/img/LOGOREFONTE.png",
              width: 150.0,
              height: 150.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 45),
            child: Text (
              'REINITIALISEZ VOTRE MOT DE PASSE',
              style: TextStyle(
                fontSize:19,
                color: Color(0xff3a783a),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 45),
            child: Text (
              'Veuillez préciser votre Email afin de recevoir\n le lien de reinitialisation de votre mot de passe',
              style: TextStyle(
                fontSize:15,
                color: Color(0xff232222),
                
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Entrez votre Email',
               prefixIcon: Icon(Icons.mail_outline),
              ),
            ),
          ),
           Padding(
             padding: const EdgeInsets.only(top: 50),
             child: RaisedButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
              color: Color(0xffB25d00),
              onPressed: () {
              },
              child: Text('Envoyer',
              style: TextStyle(color: Colors.white)),
          ),
           ),
        ],
      ),
    );
  }
}
