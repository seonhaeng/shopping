import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopping_demo/contants.dart';
import 'package:shopping_demo/models/cart.dart';
import 'package:shopping_demo/screens/cart/components/cart_item_cart.dart';
import 'package:shopping_demo/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: ListView.builder(
        itemCount: demoCarts.length,

          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Dismissible(
                key: Key(demoCarts[index].product.id.toString()),
                direction: DismissDirection.endToStart,
                background: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Color(0xffffe6e6),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [

                      Spacer(),
                      SvgPicture.asset("assets/icons/Trash.svg"),
                    ],

                  ),
                ),
                onDismissed: (direction){
                  setState(() {
                    demoCarts.removeAt(index);
                  });

                },

                child: CartItemCard(cart: demoCarts[index])),
          ),

      ),
    );
  }
}
