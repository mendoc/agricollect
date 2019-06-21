import 'package:flutter/material.dart';
import 'package:agricollect/config.dart';
import 'package:flutter/painting.dart';
import 'package:agricollect/widget/menu_lateral.dart';

class NewCampagne extends StatefulWidget {
  @override
  _NewCampagneState createState() => _NewCampagneState();
}

class _NewCampagneState extends State<NewCampagne>
    with SingleTickerProviderStateMixin {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    MenuLateral dr =
        MenuLateral(nom: "Mbadinbga Moure", email: "m.mbadinga@gmail.com");
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: dr,
        body: SingleChildScrollView(
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 22),
                            child: Text(
                              "CRÉATION DE CAMPAGNE",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Roboto Bold",
                                  fontSize: 20.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 10, right: 10),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 15, right: 15),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'Libellé',
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text(
                                        '*',
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 18,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                TextFormField(
                                  autofocus: true,
                                  decoration: InputDecoration(
                                      hintText:
                                          'Inscrivez le titre de votre campagne'),
                                ),
                              ],
                            ),
                          )),
                    ),
                    Container(
                      child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 10, right: 10),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 15, right: 15),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'Description',
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text(
                                        '*',
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 18,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                TextFormField(
                                  autofocus: true,
                                  decoration: InputDecoration(
                                      hintText: 'Inscrivez la description',
                                      prefixIcon: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 8),
                                        child: Icon(
                                          Icons.info,
                                        ),
                                      )),
                                ),
                              ],
                            ),
                          )),
                    ),
                    Container(
                      width: double.infinity,
                      padding:
                          const EdgeInsets.only(top: 30, left: 20, right: 20),
                      child: Column(
                        children: <Widget>[
                          Container(
                              width: double.infinity,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Text(
                                  'Photo',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              )),
                          Container(
                            width: double.infinity,
                            child: RaisedButton(
                              onPressed: () {},
                              child: Text(
                                "Télécharger",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 10, right: 10),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 15, right: 20),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Text(
                                              'Date de début',
                                              style: TextStyle(
                                                fontSize: 18,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5),
                                              child: Text(
                                                '*',
                                                style: TextStyle(
                                                  color: Colors.red,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        TextFormField(
                                          keyboardType: TextInputType.datetime,
                                          autofocus: true,
                                          decoration: InputDecoration(
                                            hintText: '01/02/2019',
                                            prefixIcon: Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 8),
                                              child: Icon(
                                                Icons.date_range,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                    left: 10,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 10, right: 15),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Text(
                                              'Date de fin',
                                              style: TextStyle(
                                                fontSize: 18,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5),
                                              child: Text(
                                                '*',
                                                style: TextStyle(
                                                  color: Colors.red,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        TextFormField(
                                          keyboardType: TextInputType.datetime,
                                          autofocus: true,
                                          decoration: InputDecoration(
                                            hintText: '02/06/2019',
                                            prefixIcon: Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 8),
                                              child: Icon(
                                                Icons.date_range,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      //width: double.infinity,
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40, bottom: 20),
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)),
                          onPressed: () {},
                          color: Color(0xffbf3b02),
                          child: Text("VALIDER",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              )),
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
    );
  }
}
