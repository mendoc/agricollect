import 'package:agricollect/config.dart';
import 'package:agricollect/route/connexion.dart';
import 'package:agricollect/route/home.dart';
import 'package:flutter/material.dart';
import 'package:agricollect/widget/campagne.dart';
import 'package:agricollect/widget/menu_lateral.dart';
import 'package:agricollect/route/new_campagne.dart';

class DataView extends StatefulWidget {
  @override
  _DataViewState createState() => _DataViewState();
}

class _DataViewState extends State<DataView>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  String mainProfilePicture = "assets/img/user_placeholder.jpg";
  String otherProfilePicture =
      "https://randomuser.me/api/portraits/women/47.jpg";

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
     MenuLateral dr = MenuLateral(
      nom: "Mbadinbga Moure",
      email: "m.mbadinga@gmail.com"
      );
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: dr,
        body: Container(
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
                      InkWell(
                        child: Icon(
                          Icons.menu,
                          size: 35.0,
                          color: mainColor,
                        ),
                        onTap: () {
                          _scaffoldKey.currentState.openDrawer();
                        },
                      ),
                      Image.asset(
                        "assets/img/logo.png",
                        width: 100.0,
                      ),
                      Icon(
                        Icons.search,
                        size: 35.0,
                        color: Color(0xFF3a783a),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        color: mainColor,
                        width: double.infinity,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(23.0),
                            child: Text(
                              "VARIATION DES PRIX DU MANIOC",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: double.maxFinite,
                        color: Colors.grey,
                        height: 170.0,
                        child: Image.asset(
                          "assets/img/manioc.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                                child: Container(
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        width: double.maxFinite,
                                        child: Text(
                                          "Initiateur",
                                          style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 25.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: double.maxFinite,
                                        child: Text(
                                          "vous",
                                          style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 20.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10.0),
                                child: Container(
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        width: double.maxFinite,
                                        child: Text(
                                          "Produit(s) cible(s)",
                                          style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 25.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: double.maxFinite,
                                        child: Text(
                                          "Manioc",
                                          style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 20.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10.0),
                                child: Container(
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        width: double.maxFinite,
                                        child: Text(
                                          "Collectes effectuées",
                                          style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 25.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: double.maxFinite,
                                        child: Text(
                                          "300",
                                          style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 20.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10.0),
                                child: Container(
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        width: double.maxFinite,
                                        child: Text(
                                          "Nombre d'agents",
                                          style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 25.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: double.maxFinite,
                                        child: Text(
                                          "15",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 20.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10.0),
                                child: Container(
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        width: double.maxFinite,
                                        child: Text(
                                          "Progréssion",
                                          style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 25.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: double.maxFinite,
                                        child: Text(
                                          "Du 31/07/2018 au 13/07/2019",
                                          style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 20.0,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 2.0),
                                        child: Container(
                                          width: double.maxFinite,
                                          child: Text(
                                            "18 jours restants",
                                            style: TextStyle(
                                              color: Colors.grey[600],
                                              fontSize: 20.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Text(
                                "Données collectées",
                                style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18.0, vertical: 10.0),
                              child: Container(
                                child:
                                    Image.asset("assets/img/graph-manioc.png"),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              width: double.maxFinite,
                                              child: Text(
                                                "Période de collecte",
                                                style: TextStyle(
                                                  color: Colors.grey[600],
                                                  fontSize: 25.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: double.maxFinite,
                                              child: Text(
                                                "Du 31/07/2018 au 13/07/2019",
                                                style: TextStyle(
                                                  color: Colors.grey[600],
                                                  fontSize: 20.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              width: double.maxFinite,
                                              child: Text(
                                                "Base d'analyse",
                                                style: TextStyle(
                                                  color: Colors.grey[600],
                                                  fontSize: 25.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: double.maxFinite,
                                              child: Text(
                                                "280 collectes",
                                                style: TextStyle(
                                                  color: Colors.grey[600],
                                                  fontSize: 20.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 15.0),
                                        child: RaisedButton(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30.0)),
                                          onPressed: () {
                                            Navigator.push(
                                                // Navigator.push permet de mettre une interface au dessus d'une autre
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DataView()));
                                          },
                                          color: Color(0xffbf3b02),
                                          child: Text(
                                            "VOIR PLUS",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
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

class OtherPage extends StatelessWidget {
  final String pageText;

  OtherPage(this.pageText);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(pageText)),
      body: Center(
        child: Text(pageText),
      ),
    );
  }
}
