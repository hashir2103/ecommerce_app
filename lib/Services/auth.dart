import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = result.user;
      return user;
    } catch (e) {
      e.toString();
      return null;
    }
  }

  Future signUpWithEmailAndPassword(String email, String password) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future resetPass(String email) async {
    try {
      return await _auth.sendPasswordResetEmail(email: email);
    } catch (e) {
      return e.toString();
    }
  }

  // Future<void> signInWithFb() async {
  //   FacebookLogin facebookSignIn = FacebookLogin();

  //   final result = await facebookSignIn.logIn(['email']);
  //   final token = result.accessToken.token;
  //   // final graphResponse = await http.get(
  //   //     'https://graph.facebook.com/v2.12/me?fields=name,first_name,last_name,email&access_token=$token');
  //   // print('.......................................${graphResponse.body}');
  //   if (result.status == FacebookLoginStatus.loggedIn) {
  //     final AuthCredential credential =
  //         FacebookAuthProvider.getCredential(accessToken: token);
  //     final FirebaseUser user =
  //         (await _auth.signInWithCredential(credential)).user;
  //     print("User Detail..................>>>${user.displayName}");
  //   }
  // }

  Future<FirebaseUser> signInWithGoogle(BuildContext context) async {
    final GoogleSignIn _googleSignIn = new GoogleSignIn();

    final GoogleSignInAccount googleSignInAccount =
        await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken);

    AuthResult result = await _auth.signInWithCredential(credential);
    FirebaseUser userDetails = result.user;
    return userDetails;
  }

  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
