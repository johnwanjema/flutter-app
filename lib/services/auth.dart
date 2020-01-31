import 'package:firebase_auth/firebase_auth.dart';
import 'package:helloflutter/models/user.dart';

class AuthService {
  //sign in ani

  final FirebaseAuth _auth = FirebaseAuth.instance;
  //create user

  User _userFromFirebase(FirebaseUser user){
    return user != null ? User(uid: user.uid):null;

  }

  Stream<User> get user{
    return _auth.onAuthStateChanged
//    .map((FirebaseUser user)=> _userFromFirebase(user));
  .map(_userFromFirebase);
  }


   Future SignInAnon() async{
     try{
       AuthResult result = await _auth.signInAnonymously();
       FirebaseUser user = result.user;
       return _userFromFirebase(user);
     }catch(e){
      print(e.toString());
          return null;
     }
   }
}