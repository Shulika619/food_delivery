import 'package:flutter/material.dart';

import '../../../../core/size_config.dart';
import '../../../home/data/models/food.dart';
import '../components/arrow_back.dart';
import '../components/favorite_food.dart';

class FoodImage extends StatefulWidget {
  Food food;
  FoodImage({required this.food});

  @override
  State<FoodImage> createState() => _FoodImageState();
}

class _FoodImageState extends State<FoodImage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: SizeConfig.screenHeight! * 0.45,
      decoration: BoxDecoration(
        color: Colors.orangeAccent,
        image: DecorationImage(
            image: AssetImage("${widget.food.foodImageName}"),
            fit: BoxFit.fitWidth),
      ),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.screenWidth! / 13.7,
              vertical: SizeConfig.screenHeight! / 34.15),

          /// 30.0 - 20.0
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ArrowBack(),
              FavoriteFood(),
            ],
          ),
        ),
      ),
    );
  }
}
