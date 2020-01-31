import 'package:flutter/material.dart';
import 'package:helloflutter/models/user.dart';
import 'package:helloflutter/screens/wrapper.dart';
import 'package:helloflutter/services/auth.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
          home: Wrapper()
      ),
    );
  }
}

