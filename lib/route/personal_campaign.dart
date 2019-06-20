import 'package:flutter/material.dart';

class PersonalCampaign extends StatefulWidget {
  @override
  _PersonalCampaignState createState() => _PersonalCampaignState();
}

class _PersonalCampaignState extends State<PersonalCampaign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: new BorderRadius.circular(15.0),
              child: Image.asset('assets/img/7.jpg'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, left: 5, right: 5, bottom: 8),
                  child: Text(
                    'Cette campagne a étét menée dans le but de connaitre la quantité de citron produite dans la zone de Makokou. Il ressort de la que les citrons sont beaucoup plus produit dans cette zone que le reste des provinces. ',
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[Icon(Icons.edit),Icon(Icons.file_download),Icon(Icons.share),Icon(Icons.insert_invitation)],
              ),
            )
          ],
        ),
      ),
    );
  }
}
