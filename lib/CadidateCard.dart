import 'package:flutter/material.dart';
import 'package:candidates/CandidatesPage.dart';
// import './main.dart';

class CandidateCard extends StatelessWidget {
  var _aspectRatio = 16.0 / 12.0;
  String _firstName;
  String _lastName;
  String _occupation;
  String _party;
  String _picture;

  CandidateCard(this._firstName, this._lastName, this._occupation, this._party, this._picture);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {
        // Navigator.of(context)
        //     .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
        //   return CandidatesPage();
        // }));
        Navigator.of(context)
            .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
          return CandidatesPage();
        }));
      },
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: 320.0,
                height: 250,
                margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(_picture), fit: BoxFit.cover),
                ),
              ),
              Container(
                width: 320,
                height: 250,
                margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [Colors.transparent, Colors.black],
                      begin: FractionalOffset.center,
                      end: FractionalOffset.bottomCenter,
                    )),
              ),
              Positioned(
                bottom: 20,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      _firstName + " " + _lastName,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      _occupation + " | " + _party,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
