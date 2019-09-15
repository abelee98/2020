import 'package:candidates/data.dart';
import 'package:flutter/material.dart';

class PoliciesPage extends StatelessWidget {
  String _policyName;

  PoliciesPage(this._policyName);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 0, right: 18),
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                ),
                Expanded(
                  child: Text(
                    _policyName,
                    style: TextStyle(fontSize: 26),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 20, right: 10),
            child: createCandidates(),
          )
        ],
      ),
    ));
  }
}

Widget createCandidates() {
  List<Widget> clst = List<Widget>();

  for (int i = 0; i < candidates.length; i++) {
    clst.add(Padding(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        children: <Widget>[
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage(candidates[i].pictureHome),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            height: 120,
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    candidates[i].firstName + " " + candidates[i].lastName,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("This is his/her policy")
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
  return Column(children: clst);
}
