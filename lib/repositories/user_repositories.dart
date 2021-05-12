import 'package:firebase_auth/firebase_auth.dart';

class UserRepositories {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  UserRepositories({this.firebaseAuth});

  // sign up with email and pwd

  Future<User> SignUp(String email, String password) async {
    try {
      var auth = await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return auth.user;
    } catch (e) {
      print(e.toString());
    }
  }

  // sign in

  Future<User> Sigin(String email, String password) async {
    try {
      var auth = await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return auth.user;
    } catch (e) {
      print(e.toString());
    }
  }
  // check sign in
}
