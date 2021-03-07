import 'package:flutter/material.dart';
import 'package:shopping_demo/components/custom_bottom_nav_bar.dart';
import 'package:shopping_demo/screens/profile/components/body.dart';

import '../../enums.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(seletedMenu: MenuState.profile,),
    );
  }
}

