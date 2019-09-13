import 'package:flutter/material.dart';

class CandidatesPage extends StatelessWidget {
  String _picture;
  String _firstName;
  String _lastName;
  String _occupation;
  String _party;

  CandidatesPage(this._picture, this._firstName, this._lastName, this._occupation, this._party);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      body: Container(
        child: Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            Column(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset(_picture, fit: BoxFit.cover,),
                ),
              ],
            ),
            Positioned(
              top: MediaQuery.of(context).padding.top,
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                  ),
                  
                ],
              )
            ,),
            
            Positioned(
              top: (MediaQuery.of(context).size.width / 1.2),
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(22.0),
                      topRight: Radius.circular(22.0)),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 8, right: 8),
                  child: SingleChildScrollView(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding:
                                EdgeInsets.only(top: 32, left: 18, right: 18),
                            child: Text(
                              _firstName + " " + _lastName,
                              style: TextStyle(
                                  fontSize: 26, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 18, right: 18),
                            child: Text(
                              _occupation + " | " + _party,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w300),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 20, left: 18, right: 18),
                            child: Text(
                              "About",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 18, right: 18),
                            child: Text("Filler text"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
