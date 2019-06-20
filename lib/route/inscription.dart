import 'package:flutter/material.dart';

class Inscription extends StatefulWidget {
  @override
  _InscriptionState createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
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
                  child: TextFormField(
                    autofocus: true,
                    decoration: InputDecoration(
                        labelText: 'Nom',
                        prefixIcon: Icon(
                          Icons.account_circle,
                        )),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
                  child: TextFormField(
                    autofocus: true,
                    decoration: InputDecoration(
                        labelText: 'Prénom',
                        prefixIcon: Icon(
                          Icons.account_circle,
                        )),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
                  child: TextFormField(
                    autofocus: true,
                    decoration: InputDecoration(
                        labelText: 'Téléphone',
                        prefixIcon: Icon(
                          Icons.phone,
                        )),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
                  child: TextFormField(
                    autofocus: true,
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
                  padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
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
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: InkWell(//inkwell prend en propriete onTap
                  onTap: () {// Navigator.pop equivaut a l'appui sur le bouton retour, on
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Text("Déja un compte ? Se connecter",
                          style: TextStyle(color: Color(0xff409618))),
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
