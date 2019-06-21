import 'package:agricollect/widget/topbar.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _Profile createState() => _Profile();
}

class _Profile extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            TopBar(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Stack(children: <Widget>[
                      Image.asset(
                        'assets/img/meuf.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 350.0, left: 350.0),
                        child: IconButton(
                          color: Colors.green,
                          splashColor: Colors.white,
                          onPressed: () {},
                          icon: Icon(
                            Icons.camera_alt,
                          ),
                          iconSize: 40.0,
                        ),
                      ),
                    ]),
                    Container(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 25, right: 25),
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Nom et Prénom',
                              prefixIcon: Icon(
                                Icons.account_circle,
                              )),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 25, right: 25),
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Activité',
                              prefixIcon: Icon(
                                Icons.work,
                              )),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 25, right: 25),
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Situation Géographique',
                              prefixIcon: Icon(
                                Icons.location_on,
                              )),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 25, right: 25),
                        child: TextFormField(
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
                        padding:
                            const EdgeInsets.only(top: 10, left: 25, right: 25),
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Email',
                              prefixIcon: Icon(
                                Icons.email,
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
                            "ENREGISTRER",
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
          ],
        ),
      ),
    );
  }
}
