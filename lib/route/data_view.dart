import 'package:agricollect/config.dart';
import 'package:agricollect/widget/topbar.dart';
import 'package:flutter/material.dart';

class DataView extends StatefulWidget {
  @override
  _DataViewState createState() => _DataViewState();
}

class _DataViewState extends State<DataView>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              TopBar(),
              Expanded(
                child: Container(
                  child: SingleChildScrollView(
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
                                  padding: const EdgeInsets.only(
                                      top: 10.0, bottom: 10.0),
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
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10.0),
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
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10.0),
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
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10.0),
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
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10.0),
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
                                  child: Image.asset(
                                      "assets/img/graph-manioc.png"),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10.0, bottom: 10.0),
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
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10.0),
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
                ),
              ),
            ],
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
