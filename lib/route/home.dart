import 'package:agricollect/config.dart';
import 'package:agricollect/route/connexion.dart';
import 'package:flutter/material.dart';
import 'package:agricollect/widget/campagne.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
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
    Drawer dr = Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Mbadinga Moure"),
            accountEmail: Text("m.mbadinga@gmail.com"),
            currentAccountPicture: GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage(
                  mainProfilePicture,
                ),
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/img/fond_drawer.jpg"))),
          ),
          ListTile(
              leading: Icon(Icons.home),
              title: Text("Accueil"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => OtherPage("Accueil")));
              }),
          ListTile(
              leading: Icon(Icons.edit),
              title: Text("Editer mon profil"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) =>
                        OtherPage("Editer mon profil")));
              }),
          ListTile(
              leading: Icon(Icons.info_outline),
              title: Text("A propos de l'application"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) =>
                        OtherPage("A propos de l'application")));
              }),
          Divider(),
          ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Déconnexion"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement( //pushReplacement represante un allé simple la page connexion va donc etre fermer une fois arriver
                  context,
                  MaterialPageRoute(
                      builder: (context) => Connexion()),
                );
              }),
        ],
      ),
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
