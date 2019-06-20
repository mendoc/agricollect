import 'package:flutter/material.dart';

class NewPassword extends StatefulWidget {
  @override
  
  _NewPasswordState createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Container( 
                  child: Image.asset(
                    'assets/img/logo.png',
                    width: 180,
                  ),
                ),
              )),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
                 child: Center(
                   child: Text(
                     "REINITIALISATION DU MOT DE PASSE"
                   ),
                 )
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
                  child: TextFormField(
                    autofocus: true,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Nouveau Mot de passe',
                      prefixIcon: Icon(
                        Icons.lock,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
                  child: TextFormField(
                    autofocus: true,
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Confirmer le mot de passe',
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
                  padding: const EdgeInsets.only(top: 20),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    onPressed: () {},
                    color: Color(0xffbf3b02),
                    child: Text(
                      "S'INSCRIRE",
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
      ),
    );
  }
}
