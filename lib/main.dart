import 'package:candidates/CadidateCard.dart';
import 'package:flutter/material.dart';
import 'package:candidates/CandidatesPage.dart';
import 'package:candidates/PoliciesPage.dart';
import 'package:flutter/services.dart';
import 'package:candidates/data.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.black, // Color for Android
      statusBarBrightness:
          Brightness.light // Dark == white status bar -- for IOS.
      ));
  runApp(MaterialApp(
    home: HomeWidget(),
    debugShowCheckedModeBanner: true,
  ));
}

class HomeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HomeState();
  }
}

class HomeState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Scaffold(
        body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 30, right: 18),
              child: Row(
                children: <Widget>[
                  Text(
                    "2020",
                    style: TextStyle(fontSize: 30,),
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 340,
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 25,
                    margin: EdgeInsets.only(left: 30, top: 15),
                    child: Text(
                      "Candidates",
                      style: TextStyle(fontSize: 26),
                    ),
                  ),
                  SizedBox(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    child: PageView.builder(
                      itemCount: candidates.length,
                      itemBuilder: (context, position) {
                        var _c = candidates[position];
                        return CandidateCard(_c.firstName, _c.lastName, _c.occupation,_c.party, _c.pictureHome, _c.pictureProfile);
                      },
                      controller: PageController(
                        viewportFraction: 0.9,
                        initialPage: 0,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 25,
              margin: EdgeInsets.only(
                left: 30,
              ),
              child: Text(
                "Policies",
                style: TextStyle(fontSize: 26),
              ),
            ),
            // SizedBox(
            //   width: MediaQuery.of(context).size.width,
            //   child: GridView.count(
            //   padding: EdgeInsets.all(8),
            //   physics: BouncingScrollPhysics(),
            //   crossAxisCount: 2,
            //   children: List.generate(8, (index) {
            //     return Policies();
            //   }),
            // ),
            // )

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Policies(),
                  Container(
                    width: 20,
                  ),
                  Policies(),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Policies(),
                  Container(
                    width: 20,
                  ),
                  Policies(),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Policies(),
                  Container(
                    width: 20,
                  ),
                  Policies(),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Policies(),
                  Container(
                    width: 20,
                  ),
                  Policies(),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Policies(),
                  Container(
                    width: 20,
                  ),
                  Policies(),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}

class Policies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        width: 150,
        height: 90,
        child: FlatButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Text(
            "Healthcare",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
              return PoliciesPage();
            }));
          },
        ),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ));
  }
}
