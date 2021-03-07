import 'package:flutter/material.dart';
import 'package:shopping_demo/screens/complete_profile/components/body.dart';

class CompleteprofileScreen extends StatelessWidget {
  static String routeName = "/complete_profile";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("SIGN UP"),

      ),

      body: Body(),


    );
  }
}
