import 'package:flutter/material.dart';

import '../../../../core/size_config.dart';

class FoodImage extends StatefulWidget {
  final String foodImage;
  const FoodImage({Key? key, required this.foodImage}) : super(key: key);

  @override
  State<FoodImage> createState() => _FoodImageState();
}

class _FoodImageState extends State<FoodImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.screenHeight! / 8.54,
      width: SizeConfig.screenWidth! / 4.57,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(widget.foodImage),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}
