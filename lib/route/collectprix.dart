import 'package:flutter/material.dart';
import 'package:agricollect/config.dart';

class CollectPrix extends StatefulWidget {
  @override
  _CollectPrixState createState() => _CollectPrixState();
}

class _CollectPrixState extends State<CollectPrix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 30.0),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.menu,
                      size: 35.0,
                      color: mainColor,
                    ),
                    Image.asset(
                      "assets/img/logo.png",
                      width: 100.0,
                    ),
                    Icon(
                      Icons.search,
                      size: 35.0,
                      color: Color(0xFF3a783a),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 22.0),
                color: mainColor,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "COLLECTE DE PRIX",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Roboto Bold",
                          fontSize: 15.0),
                    )
                  ],
                ),
              ),
              Container(
                color: mainColor.withOpacity(0.1),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          title: Text("Prix", style: TextStyle(fontSize: 20)),
                        ),
                        Divider(),
                        Form(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 28.0),
                                    child: Text(
                                      "Date",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      "*",
                                      style: TextStyle(
                                          color: Colors.red, fontSize: 20),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 35.0, left: 15, right: 15),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText:
                                          "Date d'enregistrement de vos données",
                                      prefixIcon: Icon(Icons.date_range)),
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return 'Enter some text';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 28.0),
                                    child: Text(
                                      "Lieu",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      "*",
                                      style: TextStyle(
                                          color: Colors.red, fontSize: 20),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 30.0, left: 15, right: 15),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText:
                                          "Inscrivez votre lieu d'enregistrement",
                                      prefixIcon: Icon(Icons.add_location)),
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return 'Enter some text';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 28.0),
                                    child: Text(
                                      "Vendeur",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      "*",
                                      style: TextStyle(
                                          color: Colors.red, fontSize: 20),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 30.0, left: 15, right: 15),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText:
                                          "Renseignez le nom complet du transporteur",
                                      prefixIcon: Icon(Icons.account_circle)),
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return 'Enter some text';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 28.0),
                                    child: Text(
                                      "Téléphone",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      "*",
                                      style: TextStyle(
                                          color: Colors.red, fontSize: 20),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 30.0, left: 15, right: 15),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: "Renseignez votre numéro",
                                      prefixIcon: Icon(Icons.phone)),
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return 'Enter some text';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 28.0),
                                    child: Text(
                                      "Photo",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      "*",
                                      style: TextStyle(
                                          color: Colors.red, fontSize: 20),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 30.0, left: 15, right: 15),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: "Téléchargez une photo",
                                      prefixIcon: Icon(Icons.photo)),
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return 'Enter some text';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 28.0),
                                    child: Text(
                                      "Prix Unitaire de Vente",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      "*",
                                      style: TextStyle(
                                          color: Colors.red, fontSize: 20),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 30.0, left: 15, right: 15),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText:
                                          "Renseignez le prix unitaire de vente",
                                      prefixIcon: Icon(Icons.attach_money)),
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return 'Enter some text';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 28.0),
                                    child: Text(
                                      "Prix minimum",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      "*",
                                      style: TextStyle(
                                          color: Colors.red, fontSize: 20),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 30.0, left: 15, right: 15),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: "Renseignez le prix minimum",
                                      prefixIcon: Icon(Icons.attach_money)),
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return 'Enter some text';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 28.0),
                                    child: Text(
                                      "Prix maximum",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      "*",
                                      style: TextStyle(
                                          color: Colors.red, fontSize: 20),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 30.0, left: 15, right: 15),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: "Renseignez le prix maximum",
                                      prefixIcon: Icon(Icons.attach_money)),
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return 'Enter some text';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              Divider(),
                              Row(
                                children: <Widget>[
                                  Container(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15.0, bottom: 20),
                                      child: RaisedButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30.0)),
                                        onPressed: () {},
                                        color: Color(0xffbf3b02),
                                        child: Text(
                                          "ENREGISTRER",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15.0, bottom: 20),
                                      child: RaisedButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30.0)),
                                        onPressed: () {},
                                        color: Color(0xff645D57),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 22),
                                          child: Text(
                                            "ANNULER",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
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
      ),
    );
  }
}
