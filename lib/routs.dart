import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shopping_demo/screens/cart/cart_screen.dart';
import 'package:shopping_demo/screens/complete_profile/complete_profile_screen.dart';
import 'package:shopping_demo/screens/detailes/details_screen.dart';
import 'package:shopping_demo/screens/forgot_password/forgot_password_screen.dart';
import 'package:shopping_demo/screens/home/home_screen.dart';
import 'package:shopping_demo/screens/login_success/login_success_screen.dart';
import 'package:shopping_demo/screens/otp/otp_screen.dart';
import 'package:shopping_demo/screens/profile/profile_screen.dart';
import 'package:shopping_demo/screens/sign_in/sign_in_screen.dart';
import 'package:shopping_demo/screens/sign_up/sign_up_screen.dart';
import 'package:shopping_demo/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {

  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteprofileScreen.routeName:(context) =>CompleteprofileScreen(),
  OtpScreen.routeName:(context) => OtpScreen(),
  HomeScreen.routeName:(context) => HomeScreen(),
  DetailScreen.routeName:(context) => DetailScreen(),
  CartScreen.routeName:(context) => CartScreen(),
  ProfileScreen.routeName:(context) =>ProfileScreen(),

};