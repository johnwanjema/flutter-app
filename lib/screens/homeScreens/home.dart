import 'package:flutter/material.dart';
import 'package:helloflutter/services/auth.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Brew crew'),
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
              onPressed: ()async{
                await _auth.signOut();
              },
              icon: Icon(Icons.person),
              label: Text('logout')
          )
        ],
      ),
    );
  }
}
