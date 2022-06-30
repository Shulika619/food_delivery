import 'package:flutter/material.dart';

import '../../../../core/const.dart';
import '../../../../core/size_config.dart';
import '../../../home/data/models/food.dart';

class FoodName extends StatefulWidget {
  final Food food;
  const FoodName({Key? key, required this.food}) : super(key: key);

  @override
  State<FoodName> createState() => _FoodNameState();
}

class _FoodNameState extends State<FoodName> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Row(children: [
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(widget.food.foodName,
            style: TextStyle(
                color: kTxtMainColor,
                fontSize: SizeConfig.screenHeight! / 22.77,
                fontFamily: "Roboto")),
        Text(widget.food.foodCategory,
            style: const TextStyle(color: kTxtListColor, fontSize: 18)),
      ]),
      // const Spacer(),
      // Text(
      //   "\$${widget.food.foodPrice}",
      //   style: TextStyle(
      //       color: kMainColor, fontSize: SizeConfig.screenHeight! / 22.77),
      // ),
    ]);
  }
}
