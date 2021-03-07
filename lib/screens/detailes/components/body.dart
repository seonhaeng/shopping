import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_demo/components/default_button.dart';
import 'package:shopping_demo/components/rounded_icon_btn.dart';
import 'package:shopping_demo/contants.dart';
import 'package:shopping_demo/models/product.dart';
import 'package:shopping_demo/screens/detailes/components/color_dots.dart';
import 'package:shopping_demo/screens/detailes/components/product_description.dart';
import 'package:shopping_demo/screens/detailes/components/product_images.dart';
import 'package:shopping_demo/screens/detailes/components/top_rounded_container.dart';
import 'package:shopping_demo/size_config.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                  pressOnSeeMore: () {},
                ),
                TopRoundedContainer(
                    color: Color(0xfff6f7f9),
                    child: Column(
                      children: [
                        ColorDots(product: product),
                        TopRoundedContainer(
                            color: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: SizeConfig.screenWidth*0.15,
                                right: SizeConfig.screenWidth*0.15,
                              top: getProportionateScreenWidth(15),
                              bottom: getProportionateScreenWidth(40),),
                              child: DefaultButton(
                                text: "Add to Cart",
                                press: () {},
                              ),
                            ))
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
