import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_demo/components/product.dart';
import 'package:shopping_demo/models/product.dart';
import 'package:shopping_demo/screens/detailes/details_screen.dart';
import 'package:shopping_demo/screens/home/components/section_title.dart';
import 'package:shopping_demo/screens/home/home_screen.dart';

import '../../../size_config.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Popular Product",
          press: () {},
        ),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) {
                  if (demoProducts[index].isPopular)
                    return ProductCard(
                      product: demoProducts[index],
                      press: () =>
                          Navigator.pushNamed(context, DetailScreen.routeName,
                              arguments: ProductDetailsArguments(
                                product: demoProducts[index],
                              )),
                    );

                  return SizedBox.shrink();
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
