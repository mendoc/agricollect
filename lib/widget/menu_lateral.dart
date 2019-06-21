import 'package:agricollect/route/home.dart';
import 'package:agricollect/route/profile.dart';
import 'package:flutter/material.dart';
import 'package:agricollect/route/connexion.dart';

class MenuLateral extends StatelessWidget {
  final nom;
  final email;

  const MenuLateral({Key key, this.nom, this.email}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(this.nom),
            accountEmail: Text(this.email),
            currentAccountPicture: GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage(
                  "assets/img/user_placeholder.jpg",
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
                    builder: (BuildContext context) => HomeScreen()));
              }),
          ListTile(
              leading: Icon(Icons.edit),
              title: Text("Editer mon profil"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) =>
                        Profile()));
              }),
          ListTile(
              leading: Icon(Icons.info_outline),
              title: Text("A propos de l'application"),
              onTap: () {
                Navigator.of(context).pop();
              }),
          Divider(),
          ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Déconnexion"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement(
                  //pushReplacement represante un allé simple la page connexion va donc etre fermer une fois arriver
                  context,
                  MaterialPageRoute(builder: (context) => Connexion()),
                );
              }),
        ],
      ),
    );
  }
}
