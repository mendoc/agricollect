import 'package:flutter/material.dart';
import 'package:agricollect/config.dart';

class Campagne extends StatelessWidget {
  String date;
  String titre;
  String image;
  int statut;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            child: Container(
                child: Image.asset(
              (this.image != null) ? this.image : "assets/img/fond_drawer.jpg",
              fit: BoxFit.fitWidth,
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 45.0, left: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  this.titre,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Text(
                    this.date,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    (this.statut == 2) ?  "Terminé" : "En cours",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: (this.statut == 2) ?  Color(0xFF000000) : couleurOrange,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Icon(
                    Icons.visibility,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Campagne(
      {@required this.titre, @required this.date, this.statut, this.image});
}
