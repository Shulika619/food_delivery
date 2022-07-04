import 'package:flutter/material.dart';
import 'package:food_delivery/src/core/const.dart';

import '../../../../core/size_config.dart';

class FoodText extends StatefulWidget {
  final String foodName;
  final String foodPrice;
  final int foodQuantity;
  const FoodText(
      {Key? key,
      required this.foodName,
      required this.foodPrice,
      required this.foodQuantity})
      : super(key: key);

  @override
  State<FoodText> createState() => _FoodTextState();
}

class _FoodTextState extends State<FoodText> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.foodName,
            style: TextStyle(
                color: kTxtMainColor,
                fontSize: SizeConfig.screenHeight! / 42.69),
            maxLines: 2),
        SizedBox(height: SizeConfig.screenHeight! / 341.5),
        Text.rich(
          TextSpan(
            text: "\$${widget.foodPrice}",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                color: kMainColor,
                fontSize: SizeConfig.screenHeight! / 37.95),
            children: [
              TextSpan(
                  text: " x ${widget.foodQuantity}",
                  style: Theme.of(context).textTheme.bodyText1),
            ],
          ),
        ),
      ],
    );
  }
}
