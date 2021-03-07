import 'package:flutter/material.dart';
import 'package:shopping_demo/components/custom_surfix_icon.dart';
import 'package:shopping_demo/components/default_button.dart';
import 'package:shopping_demo/components/form_error.dart';
import 'package:shopping_demo/contants.dart';
import 'package:shopping_demo/screens/complete_profile/components/complete_profile_form.dart';
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
              SizedBox(height: SizeConfig.screenHeight*0.02,),//2%
              Text(
                "Complete Profile",
                style: headingStyle,
              ),
              Text(
                "Complete your details or contiur \n with social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight*0.05,),//5%
              CompleteProfileForm(),
              SizedBox(height: getProportionateScreenHeight(30),),
              Text(
                "By continuing your confirm that you agree \n with out term and condition",
                textAlign: TextAlign.center,

              ),
            ],
          ),
        ),
      ),
    );
  }
}

