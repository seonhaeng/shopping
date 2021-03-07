import 'package:flutter/material.dart';
import 'package:shopping_demo/screens/forgot_password/forgot_password_screen.dart';
import 'package:shopping_demo/screens/sign_up/sign_up_screen.dart';

import '../contants.dart';
import '../size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: TextStyle(fontSize: getProportionateScreenWidth(12)),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
          child: Text(
            " SIGN UP",
            style: TextStyle(fontSize: getProportionateScreenWidth(12), color: kPrimaryColor),

          ),
        ),
      ],
    );
  }
}
