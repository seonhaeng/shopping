import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_demo/contants.dart';
import 'package:shopping_demo/screens/profile/components/profile_manu.dart';

import 'package:shopping_demo/screens/profile/components/profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePic(),
        SizedBox(
          height: 20,
        ),
        ProfileMenu(
          icon: "assets/icons/User Icon.svg",
          text: "My Account",
          press: () {},
        ),
        ProfileMenu(
          icon: "assets/icons/Bell.svg",
          text: "Notifications",
          press: () {},
        ),
        ProfileMenu(
          icon: "assets/icons/Question mark.svg",
          text: "Settings",
          press: () {},
        ),
        ProfileMenu(
          icon: "assets/icons/Question mark.svg",
          text: "Help Center",
          press: () {},
        ),
        ProfileMenu(
          icon: "assets/icons/Log out.svg",
          text: "Lot Out",
          press: () {},
        ),
      ],
    );
  }
}


