import 'package:flutter/material.dart';
import 'package:agricollect/config.dart';
import 'package:flutter/painting.dart';

class NewCampagne extends StatefulWidget {
  @override
  _NewCampagneState createState() => _NewCampagneState();
}

class _NewCampagneState extends State<NewCampagne>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 2, vsync: this);
  }

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
                padding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
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
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Padding(
                          padding:
                              const EdgeInsets.only(top: 50, left: 25, right: 25),
                          child: Center(
                            child: Text(
                              "CREATION DE CAMPAGNE",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
                        child: Padding(
                          padding: const EdgeInsets.only(top:20, left:15, right: 15),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    'Libelle',
                                    style: TextStyle(
                                      fontSize: 22,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      '*',
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 22,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              TextFormField(
                                autofocus: true,
                                decoration: InputDecoration(
                                hintText: 'Inscriver le titre de votre campagne'
                              ),
                            ),
                          ],
                          ),
                        )
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
                        child: Padding(
                          padding: const EdgeInsets.only(top:20, left:15, right: 15),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    'Description',
                                    style: TextStyle(
                                      fontSize: 22,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      '*',
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 22,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              TextFormField(
                                autofocus: true,
                                decoration: InputDecoration(
                                hintText: 'Inscriver le titre de votre campagne',
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.only(bottom:8),
                                  child: Icon(
                                    Icons.info,
                                  ),
                                )
                              ),
                            ),
                          ],
                          ),
                        )
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
                        child: Padding(
                          padding: const EdgeInsets.only(top:20, left:15, right: 15),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    'Photo',
                                    style: TextStyle(
                                      fontSize: 22,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      '*',
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 22,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              TextFormField(
                                autofocus: true,
                                decoration: InputDecoration(
                                hintText: 'Telechargez une photo',
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.only(bottom:8),
                                  child: Icon(
                                    Icons.file_upload,
                                  ),
                                )
                              ),
                            ),
                          ],
                          ),
                        )
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 100,
                              color: Colors.red,
                            ),
                            Container(
                              width: 100,
                              color: Colors.grey,
                            )
                          ],
                        )
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
