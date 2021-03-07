import 'package:flutter/material.dart';
import 'package:shopping_demo/models/product.dart';
import 'package:shopping_demo/screens/detailes/components/body.dart';
import 'package:shopping_demo/screens/detailes/components/custom_app_bar.dart';


class DetailScreen extends StatelessWidget {
  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments arguments =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Color(0xfff5f6f9),
      appBar: CustomAppBar(arguments.product.rating
      ),
      body: Body(product: arguments.product,),
    );
  }
}



class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({@required this.product});
}
