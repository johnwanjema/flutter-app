import 'package:flutter/material.dart';
import 'package:helloflutter/services/auth.dart';

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final AuthService _auth = AuthService();
  //text field state
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.grey[800],
          title: Text('sign in to App'),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
          child: Form(
            child: Column(
              children: <Widget>[
                SizedBox(height: 20.0),
                TextFormField(
                onChanged:(val){
                    setState(()=> email = val);
                }

              ),
                SizedBox(height: 20.0),
                TextFormField(
                  obscureText: true,
                    onChanged:(val){
                      setState(()=> password = val);                    }


                ),
                SizedBox(height: 20.0),
                RaisedButton(
                  onPressed: () async{
                    print(email);
                  }                  ,
                  color: Colors.pink[400],
                  child: Text('sign in', style: TextStyle(
                    color: Colors.white
                  ),),
                )
              ]
              ,
            ),
          ),
        ));
  }
}
