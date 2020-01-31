import 'package:flutter/material.dart';
import 'package:helloflutter/services/auth.dart';


class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: Text('sign in to App'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 150.0,horizontal: 150.0),
        child: RaisedButton(
          onPressed: ()async{
          dynamic result =  await _auth.SignInAnon();
          if(result == null){
            print('error');
          }else{
            print('signed in');
            print(result);
            print(result.isAnonymous);
          }
          },
          child: Text('sign in anon'),
        ),
      )
    );
  }
}
