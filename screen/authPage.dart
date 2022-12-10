import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

import 'signin.dart';
import 'login.dart';

class auth{
  handleAuthState(){
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context , snapshort){
        if (snapshort.hasData) {
        return Home();
        } else
        return Login();

        }
        );
  }
  googleSignIn(){}
  googleSignOut(){}
}