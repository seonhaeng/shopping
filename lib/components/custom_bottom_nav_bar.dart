import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopping_demo/screens/home/home_screen.dart';
import 'package:shopping_demo/screens/profile/profile_screen.dart';

import '../contants.dart';
import '../enums.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key key,
    @required this.seletedMenu,
  }) : super(key: key);
  final MenuState seletedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xffb6b6b6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration:
      BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),

          ),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -15),
                blurRadius: 20,
                color: Color(0xffdadada).withOpacity(0.15)
            )
          ]
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(icon: SvgPicture.asset("assets/icons/Shop Icon.svg",
              color: MenuState.home == seletedMenu
                  ? kPrimaryColor
                  : inActiveIconColor,),
                onPressed: () => Navigator.pushNamed(context, HomeScreen.routeName)),
            IconButton(icon: SvgPicture.asset("assets/icons/Heart Icon.svg",
              color: MenuState.favourite == seletedMenu
                  ? kPrimaryColor
                  : inActiveIconColor,), onPressed: () {}),
            IconButton(
                icon: SvgPicture.asset("assets/icons/Chat bubble Icon.svg",
                  color: MenuState.message == seletedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,), onPressed: () {}),
            IconButton(icon: SvgPicture.asset("assets/icons/User Icon.svg",
              color: MenuState.profile == seletedMenu
                  ? kPrimaryColor
                  : inActiveIconColor,),
                onPressed: () => Navigator.pushNamed(context, ProfileScreen.routeName)),
          ],

        ),
      ),
    );
  }
}
