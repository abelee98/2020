import 'package:candidates/CadidateCard.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:candidates/PoliciesPage.dart';
import 'package:flutter/services.dart';
import 'package:candidates/data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.black, // Color for Android
      statusBarBrightness:
          Brightness.light // Dark == white status bar -- for IOS.
      ));
  runApp(MaterialApp(
    home: HomeWidget(),
    debugShowCheckedModeBanner: true,
    theme: ThemeData(fontFamily: "Montserrat"),
  ));
}

class HomeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomeState();
  }
}

class HomeState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 25, right: 18),
              child: Row(
                children: <Widget>[
                  Text(
                    "2020",
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  )
                ],
              ),
            ),
            // Container(
            //   width: MediaQuery.of(context).size.width,
            //   height: 200,
            //   child: FlatButton(
            //     child: Text("Add Data"),
            //     onPressed: () {
            //       addData();
            //     },
            //   ),
            //   decoration: BoxDecoration(
            //   // color: Colors.blue,
            //   borderRadius: BorderRadius.circular(10),
            //   gradient: LinearGradient(
            //     colors: [hexToColor("#47A9A7"), hexToColor("#4769A9")],
            //     begin: Alignment.centerLeft,
            //     end: Alignment.centerRight,
            //   ),
            // )
            // ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 340,
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 25,
                    margin: EdgeInsets.only(left: 25, top: 15),
                    child: Text(
                      "Candidates",
                      style: TextStyle(fontSize: 26,),
                    ),
                  ),
                  SizedBox(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    child: StreamBuilder(
                      stream: Firestore.instance.collection("candidates").snapshots(),
                      builder: (context, snapshot) {
                        if (!snapshot.hasData) return Text("Getting data...");
                        return PageView.builder(
                          itemCount: snapshot.data.documents.length,
                          itemBuilder: (context, position) {
                            var _c = snapshot.data.documents[position];
                            return CandidateCard(
                                _c["firstName"],
                                _c["lastName"],
                                _c["occupation"],
                                _c["party"],
                                _c["pictureHome"],
                                _c["pictureProfile"]);
                          },
                          controller: PageController(
                            viewportFraction: 0.9,
                            initialPage: 0,
                          ),
                        );
                      },
                    )
                    
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 25,
              margin: EdgeInsets.only(
                left: 28,
              ),
              child: Text(
                "Policies",
                style: TextStyle(fontSize: 26),
              ),
            ),
            createPolicies(),
            SizedBox(height: 50,)
          ],
        ),
      )),
    );
  }
}

Color hexToColor(String code) {
  return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}

class Policies extends StatelessWidget {
  String _policyName;
  Policies(this._policyName);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      overflow: Overflow.visible,
      children: <Widget>[
        Positioned(
          bottom: -8,
          right: (150-105)/4,
          child: Container(
            width: 120,
            height: 50,
            decoration: BoxDecoration(color: Colors.transparent, boxShadow: [
              BoxShadow(blurRadius: 13, color: Colors.black.withOpacity(0.5),)
            ]),
          ),
        ),
        Container(
            width: 150,
            height: 90,
            child: FlatButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Text(
                _policyName,
                style: TextStyle(fontSize: 20, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute<Null>(builder: (BuildContext context) {
                  return PoliciesPage(_policyName);
                }));
              },
            ),
            decoration: BoxDecoration(
              // color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                colors: [hexToColor("#47A9A7"), hexToColor("#4769A9")],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            )),
        
      ],
    );
  }
}

void addData() async {
  try {
    for (var c in candidates) {
      var name = c.firstName + " " + c.lastName;
      // final String pHome = await FirebaseStorage.instance.ref().child(c.pictureHome).getDownloadURL();
      // final String pProf = await FirebaseStorage.instance.ref().child(c.pictureProfile).getDownloadURL();
      await Firestore.instance.collection("candidates").document(name).setData({
        'age': c.age,
        'firstName': c.firstName,
        'lastName': c.lastName,
        'occupation': c.occupation,
        'party': c.party,
        'pictureHome': c.pictureHome,
        'pictureProfile': c.pictureProfile
      });
    }
  } catch (e) {
    print(e.toString());
  }
}

Widget createPolicies() {
  List<Widget> policiesLst = List<Widget>();
  for (var i = 0; i < policies.length; i += 2) {
    policiesLst.add(Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Policies(policies[i].name),
          Container(
            width: 20,
          ),
          Policies(policies[i + 1].name),
        ],
      ),
    ));
  }
  return Column(
    children: policiesLst,
  );
}
