import 'package:flutter/material.dart';
import 'package:minicipalite_app/services/auth.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black12,
        elevation: 0.0,
        title: Text("Minicipalite"),
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () async {
                await _auth.signOut();
              },
              icon:Icon(Icons.person) ,
              label: Text("Log out")
          )
        ],

      ),
      body: Container(
        padding: EdgeInsets.all(10),

      ),
    );
  }
}
