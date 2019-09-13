import 'package:flutter/material.dart';

class PoliciesPage extends StatelessWidget {
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
              padding: const EdgeInsets.only(top: 8.0, left: 10, right: 18),
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
                    child: Text("Healthcare", style: TextStyle(fontSize: 26),),
                  )
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
