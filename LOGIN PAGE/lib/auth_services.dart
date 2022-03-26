import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  static FirebaseAuth _auth = FirebaseAuth.instance;
  static Future<User?> signInAnonymous() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? firebaseUser = result.user;

      return firebaseUser;
    }
    catch(e){
      print(e.toString());

      return null;
    }
  }

  static Future<Void> signOut() async{
    _auth.signOut();

    return signOut();
  }

}


