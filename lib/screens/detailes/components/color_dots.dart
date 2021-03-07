import 'package:flutter/material.dart';
import 'package:shopping_demo/components/rounded_icon_btn.dart';
import 'package:shopping_demo/models/product.dart';

import '../../../contants.dart';
import '../../../size_config.dart';

class ColorDots extends StatelessWidget {
  const ColorDots({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    //데모 버전에서는 고정 값을 사용한다. 정식 버전은 다르다
    int selectedColor = 0;
    return Padding(
      padding:
      EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        children: [
          ...List.generate(product.colors.length,
                  (index) => ColorDot(color: product.colors[index],
                isSelected: selectedColor == index,
              )),
          Spacer(),
          RoundedIconBtn(iconData: Icons.remove, press: (){}),
          SizedBox(width: getProportionateScreenWidth(15),),
          RoundedIconBtn(iconData: Icons.add, press: (){}),

        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key key,
    @required this.color,
    this.isSelected = false,
  }) : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2),
      padding: EdgeInsets.all(8),
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        // color: product.colors[0],
        shape: BoxShape.circle,
        border:
        Border.all(color: isSelected ? kPrimaryColor : Colors.transparent),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
