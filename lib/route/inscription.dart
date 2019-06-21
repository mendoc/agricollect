import 'dart:convert'; //it allows us to convert our json to a list

import 'package:agricollect/config.dart';
import 'package:agricollect/config/endpoints.dart';
import 'package:agricollect/model/Organisation.dart';
import 'package:agricollect/route/home.dart';
import 'package:agricollect/util/master.dart';
import 'package:flutter/material.dart';

class Inscription extends StatefulWidget {
  @override
  _InscriptionState createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  bool processing = false;
  int _currentCity;
  List<DropdownMenuItem<int>> _dropDownMenuItems;
  List<Organisation> _organisations = <Organisation>[
    Organisation(1, "ONG"),
    Organisation(2, "DEV"),
  ];

  Map<String, dynamic> params = {};

  final _formKey = GlobalKey<FormState>();

  void toggleProcessing() {
    setState(() {
      processing = !processing;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
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
                Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 25, right: 25),
                          child: TextFormField(
                            decoration: InputDecoration(
                                labelText: 'Nom',
                                prefixIcon: Icon(
                                  Icons.account_circle,
                                )),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Veuillez renseigner votre nom';
                              }
                              params["nom"] = value;
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
                            decoration: InputDecoration(
                                labelText: 'Prénom',
                                prefixIcon: Icon(
                                  Icons.account_circle,
                                )),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Veuillez renseigner votre prénom';
                              }
                              params["prenom"] = value;
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
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                                labelText: 'Téléphone',
                                prefixIcon: Icon(
                                  Icons.phone,
                                )),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Veuillez renseigner votre numéro de téléphone';
                              }
                              params["phone"] = value;
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
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                labelText: 'Email',
                                prefixIcon: Icon(
                                  Icons.email,
                                )),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Veuillez saisir votre adresse email';
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
                          child: DropdownButton(
                            hint: Text("Organisation"),
                            isExpanded: true,
                            value: _currentCity,
                            items: _dropDownMenuItems,
                            onChanged: changedDropDownItem,
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
                                return 'Veuillez saisir un mot de passe';
                              }
                              params["password"] = value;
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
                                labelText: 'Confirmer le mot de passe',
                                prefixIcon: Icon(
                                  Icons.lock,
                                )),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Veuillez confirmer votre mot de passe';
                              } else if (value != params["password"]) {
                                return 'Les mots de passe sont différents';
                              }
                              params["confirm"] = value;
                              return null;
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: (!processing)
                            ? Container(
                                width: double.infinity,
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0)),
                                    onPressed: () {
                                      if (_formKey.currentState.validate()) {
                                        toggleProcessing();
                                        sendInfos(params);
                                      }
                                    },
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
                              )
                            : CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                    Colors.green[800]),
                              ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  //inkwell prend en propriete onTap
                  onTap: () {
                    // Navigator.pop equivaut a l'appui sur le bouton retour, on
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Déja un compte ? Se connecter",
                        style: TextStyle(color: mainColor)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void sendInfos(Map<String, dynamic> params) {
    params['organisation'] = _currentCity.toString();
    params['pseudo']       = params['email'];
    print(params);
    post(INSCRIPTION_URL, params).then((res) {
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

  @override
  void initState() {
    _dropDownMenuItems = getDropDownMenuItems();
    _currentCity = _dropDownMenuItems[0].value;
    super.initState();
  }

  // Création de la liste pour le DropDown
  List<DropdownMenuItem<int>> getDropDownMenuItems() {
    List<DropdownMenuItem<int>> items = new List();
    for (Organisation org in _organisations) {
      // here we are creating the drop down menu items, you can customize the item right here
      // but I'll just use a simple text for this
      items.add(
          new DropdownMenuItem(value: org.id, child: new Text(org.libelle)));
    }
    return items;
  }

  void changedDropDownItem(int selectedOrg) {
    setState(() {
      _currentCity = selectedOrg;
    });
  }
}
