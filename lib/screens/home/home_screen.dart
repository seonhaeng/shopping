import 'package:flutter/material.dart';
import 'package:shopping_demo/components/custom_bottom_nav_bar.dart';
import 'package:shopping_demo/enums.dart';
import 'package:shopping_demo/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(seletedMenu: MenuState.home,),
    );
  }
}
