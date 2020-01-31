import 'package:flutter/material.dart';
import 'package:helloflutter/models/user.dart';
import 'package:helloflutter/screens/authenicate/authenticate.dart';
import 'package:helloflutter/screens/homeScreens/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);
    //return diff widgets;
    if(user == null){
      return Authenticate();
    }else{
      return Home();
    }

  }
}
