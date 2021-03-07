import 'package:firebase_auth/firebase_auth.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:shopping_demo/components/custom_surfix_icon.dart';
import 'package:shopping_demo/components/default_button.dart';
import 'package:shopping_demo/contants.dart';
import 'package:shopping_demo/screens/forgot_password/forgot_password_screen.dart';
import 'package:shopping_demo/screens/login_success/login_success_screen.dart';
import 'package:shopping_demo/size_config.dart';
import 'package:shopping_demo/warpper/authentication_service.dart';

import 'form_error.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String email, password;
  bool remember = false;

  bool _success;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            buildEmailFormField(),
            SizedBox(height: getProportionateScreenHeight(20)),
            buildPasswordFormField(),
            SizedBox(height: getProportionateScreenHeight(20)),
            Row(
              children: [
                Checkbox(
                    value: remember,
                    activeColor: kPrimaryColor,
                    onChanged: (value) {
                      setState(() {
                        remember = value;
                      });
                    }),
                Text("Remember me"),
                Spacer(),
                GestureDetector(
                  onTap: () =>Navigator.popAndPushNamed(context, ForgotPasswordScreen.routName),
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
            FormError(errors: errors),
            SizedBox(height: getProportionateScreenHeight(20)),
            DefaultButton(
              text: "Continue",
              press: () async {

                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                  _signInWithEmailAndPassword();

                  }

                showSimpleFlushbar(context);



                  // if (_formKey.currentState.validate()) {
                //   _formKey.currentState.save();
                //   _signInWithEmailAndPassword();

                  //아이디와 비번이 유효하면 로그인 success 페이지로 이동한다.
                  // Navigator.pushNamed(context, LoginSuccessScreen.routeName);



              },
            )
          ],
        ));
  }





  TextFormField buildPasswordFormField() {
    return TextFormField(
      controller: _passwordController,
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        } else if (value.length >= 8 && errors.contains(kShortPassError)) {
          setState(() {
            errors.remove(kShortPassError);
          });
          return "";
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
          return "";
        } else if (value.length < 8 && !errors.contains(kShortPassError)) {
          setState(() {
            errors.add(kShortPassError);
          });
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/Lock.svg",
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      controller: _emailController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }


  void _signInWithEmailAndPassword() async {
    final User user = (await _auth.signInWithEmailAndPassword(
      email: _emailController.text,
      password: _passwordController.text,
    )).user;

    if (user != null) {
      setState(() {
        _success = true;
        email = user.email;

      });
    } else {
      setState(() {
        _success = false;



      });
    }
  }

  void showSimpleFlushbar(BuildContext context) {
    Flushbar(
      // There is also a messageText property for when you want to
      // use a Text widget and not just a simple String
      message:
          _success == null?
      '비밀번호와 아이디가 존재 하지 않습니다.'
          :(_success?Navigator.pushNamed(context, LoginSuccessScreen.routeName):'아이디와 비밀번호가 일치하지 않습니다.'),
      // Even the button can be styled to your heart's content
      // mainButton: FlatButton(
      //   child: Text(
      //     'Click Me',
      //     style: TextStyle(color: Theme.of(context).accentColor),
      //   ),
      //   onPressed: () {},
      // ),
      duration: Duration(seconds: 3),
      // Show it with a cascading operator
    )..show(context);
  }



  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
