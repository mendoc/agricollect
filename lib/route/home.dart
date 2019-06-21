import 'package:agricollect/config.dart';
import 'package:agricollect/route/connexion.dart';
import 'package:flutter/material.dart';
import 'package:agricollect/widget/campagne.dart';
import 'package:agricollect/widget/menu_lateral.dart';
import 'package:agricollect/route/new_campagne.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _controller;

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
                padding: EdgeInsets.only(top: 12.0),
                color: mainColor,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "CAMPAGNES",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Roboto Bold",
                          fontSize: 15.0),
                    ),
                    Container(
                      child: TabBar(
                        indicatorColor: couleurOrange,
                        controller: _controller,
                        tabs: [
                          Tab(
                            text: 'CRÉÉES',
                          ),
                          Tab(
                            text: 'PUBLIQUES',
                          ),
                          Tab(
                            text: 'PARTICIPÉES',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: TabBarView(
                    controller: _controller,
                    children: <Widget>[
                      SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Créées récemment",
                                style:
                                    TextStyle(color: mainColor, fontSize: 18.0),
                              ),
                            ),
                            Campagne(
                              date: "11/06/2019",
                              titre: "Production de tomates",
                              image: "assets/img/tomates.jpg",
                            ),
                            Campagne(
                              date: "10/06/2019",
                              titre: "Production de citron",
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Dernières campagnes",
                                style:
                                    TextStyle(color: mainColor, fontSize: 18.0),
                              ),
                            ),
                            Campagne(
                              date: "10/06/2019",
                              titre: "Prix du citron",
                            ),
                            Campagne(
                              date: "11/06/2019",
                              titre: "Prix de l'oignon",
                              image: "assets/img/oignon.jpg",
                              statut: 2,
                            ),
                          ],
                          crossAxisAlignment: CrossAxisAlignment.start,
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Nouvelles campagnes",
                                style:
                                    TextStyle(color: mainColor, fontSize: 18.0),
                              ),
                            ),
                            Campagne(
                              date: "10/06/2019",
                              titre: "Production de citron",
                            ),
                            Campagne(
                              date: "11/06/2019",
                              titre: "Production de tomates",
                              image: "assets/img/tomates.jpg",
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Dernières campagnes",
                                style:
                                    TextStyle(color: mainColor, fontSize: 18.0),
                              ),
                            ),
                            Campagne(
                              date: "10/06/2019",
                              titre: "Prix du citron",
                            ),
                            Campagne(
                              date: "11/06/2019",
                              titre: "Prix de l'oignon",
                              image: "assets/img/oignon.jpg",
                              statut: 2,
                            ),
                          ],
                          crossAxisAlignment: CrossAxisAlignment.start,
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Récentes",
                                style:
                                    TextStyle(color: mainColor, fontSize: 18.0),
                              ),
                            ),
                            Campagne(
                              date: "11/06/2019",
                              titre: "Prix de l'oignon",
                              image: "assets/img/oignon.jpg",
                              statut: 2,
                            ),
                            Campagne(
                              date: "10/06/2019",
                              titre: "Prix du citron",
                            ),
                            Campagne(
                              date: "11/06/2019",
                              titre: "Production de tomates",
                              image: "assets/img/tomates.jpg",
                            ),
                          ],
                          crossAxisAlignment: CrossAxisAlignment.start,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              // Add your onPressed code here!
              Navigator.push(
                  // Navigator.push permet de mettre une interface au dessus d'une autre
                  context,
                  MaterialPageRoute(builder: (context) => NewCampagne()));
            },
            label: Text('Nouvelle campagne'),
            icon: Icon(Icons.add),
            backgroundColor: Colors.deepOrange),
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
