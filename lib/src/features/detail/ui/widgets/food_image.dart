import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/src/core/const.dart';

import '../../../../core/size_config.dart';
import '../../../home/data/models/food.dart';

class FoodImage extends StatefulWidget {
  final Food food;
  const FoodImage({Key? key, required this.food}) : super(key: key);

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
        color: kMainColor,
        image: DecorationImage(
            image: CachedNetworkImageProvider(widget.food.foodImageName),
            fit: BoxFit.cover
            // fit: BoxFit.fitHeight
            ),
      ),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.screenWidth! / 13.7,
              vertical: SizeConfig.screenHeight! / 34.15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  height: SizeConfig.screenHeight! / 19.51,
                  width: SizeConfig.screenWidth! / 10.28,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.25),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back),
                    color: Colors.white,
                  )),
              IconButton(
                onPressed: () {
                  print("Tap Favorite: ${widget.food.foodName}");
                },
                icon: const Icon(Icons.favorite),
                color: Colors.white,
                iconSize: SizeConfig.screenHeight! / 22.77,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
