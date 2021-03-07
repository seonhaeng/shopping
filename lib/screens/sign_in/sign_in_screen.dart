import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_demo/screens/sign_in/components/body.dart';
import 'package:shopping_demo/warpper/authentication_service.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("SIGN IN"),
        ),
        body: Body(),
      );
  }
}

// MultiProvider(
//
// providers: [
// Provider<AusthenticationService>(
// create: (_) => AusthenticationService(FirebaseAuth.instance),
// ),
// StreamProvider(create: (context) =>
// context
//     .read<AusthenticationService>()
// .authStateChanges),
//
// ],
//
//
// child:
//
//
//
//
//
// class AuthenticationWrpper extends StatelessWidget {
//   const AuthenticationWrpper({Key key,}) : super(key:key);
//
//   @override
//   Widget build(BuildContext context) {
//     final firebaseuser = context.watch<User>();
//     if (firebaseuser != null){
//       return Text("Signed in");
//
//     }
//     return Text("Not signed in");
//   }
// }
