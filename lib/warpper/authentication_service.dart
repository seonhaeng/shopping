import 'package:firebase_auth/firebase_auth.dart';

class AusthenticationService {
  final FirebaseAuth _firebaseAuth;

  AusthenticationService(this._firebaseAuth);

  Stream<User> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<String> signIn({String email, String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);



      return "Sign in";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String> signUp({String email, String password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return "Sign Up";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

}