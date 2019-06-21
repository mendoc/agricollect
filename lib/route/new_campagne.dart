import 'package:agricollect/config.dart';
import 'package:agricollect/widget/topbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class NewCampagne extends StatefulWidget {
  @override
  _NewCampagneState createState() => _NewCampagneState();
}

class _NewCampagneState extends State<NewCampagne>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
