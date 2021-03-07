import 'package:flutter/material.dart';
import 'package:shopping_demo/components/custom_surfix_icon.dart';
import 'package:shopping_demo/components/default_button.dart';
import 'package:shopping_demo/components/social_card.dart';
import 'package:shopping_demo/contants.dart';
import 'package:shopping_demo/screens/sign_up/components/signup_form.dart';
import 'package:shopping_demo/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight*0.02,
              ),
              Text(
                "Register Account",
                style: headingStyle,
              ),
              Text(
                "Complete your details or continue \n with social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight*0.07,
              ),//7% of total height
              SignUpForm(),
              SizedBox(
                height: SizeConfig.screenHeight*0.07,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: "assets/icons/google-icon.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/facebook-2.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/twitter.svg",
                    press: () {},
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenWidth(20),
              ),
              Text("By continuing your confirm that you agree \nwith out Term and condition",
                textAlign: TextAlign.center,
                  ),

            ],
          ),
        ),
      ),
    );
  }
}

