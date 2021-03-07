import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_demo/components/default_button.dart';
import 'package:shopping_demo/contants.dart';
import 'package:shopping_demo/screens/sign_in/sign_in_screen.dart';
import '../components/splash_content.dart';
import 'package:shopping_demo/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Your Hoju, Let's shop",
      "image": "assets/images/splash_1.png",
    },
    {
      "text": "이 앱은 호주 상품 구매 배송을 대행해 주는 앱입니다.",
      "image": "assets/images/splash_2.png",
    },
    {
      "text": "호주의 다양한 상품들을 즐겨보세요.",
      "image": "assets/images/splash_3.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]["text"],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20),),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(flex: 3,),
                    DefaultButton(
                      text: "Continue",
                      press: (){
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },

                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

