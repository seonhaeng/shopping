import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_demo/components/default_button.dart';
import 'package:shopping_demo/contants.dart';
import 'package:shopping_demo/screens/complete_profile/complete_profile_screen.dart';
import 'package:shopping_demo/size_config.dart';

import 'otp_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight*0.05),
              Text(
                "OTP Verification",
                style: headingStyle,
              ),
              Text("We sent your code to your mobile"),
              buildTimer(),
              SizedBox(height: SizeConfig.screenHeight*0.15),
              OtpForm(),
              SizedBox(height: SizeConfig.screenHeight*0.1,),
              GestureDetector(
                  onTap: (){
                    
                  },
                  child: Text("Resend OTP code", style: TextStyle(decoration: TextDecoration.underline),)),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This code will expire in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0),
          duration: Duration(seconds: 30),
          builder: (context, value, child) => Text(
            "00:${value.toInt()}",
            style: TextStyle(color: kPrimaryColor),
          ),
          onEnd: () {},
        )
      ],
    );
  }
}

