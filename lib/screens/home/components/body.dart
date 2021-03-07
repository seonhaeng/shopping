import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_demo/components/product.dart';
import 'package:shopping_demo/contants.dart';
import 'package:shopping_demo/models/product.dart';
import 'package:shopping_demo/screens/home/components/categories.dart';
import 'package:shopping_demo/screens/home/components/discount_banner.dart';
import 'package:shopping_demo/screens/home/components/home_header.dart';
import 'package:shopping_demo/screens/home/components/popular_products.dart';
import 'package:shopping_demo/screens/home/components/section_title.dart';

import 'package:shopping_demo/screens/home/components/special_offers.dart';

import 'package:shopping_demo/size_config.dart';

import 'search_field.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            HomeHeader(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            DiscountBanner(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            Categories(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            SpecialOffers(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            PopularProducts(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
          ],
        ),
      ),
    );
  }
}
