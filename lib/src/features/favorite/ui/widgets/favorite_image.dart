import 'package:flutter/material.dart';
import 'package:food_delivery/src/core/const.dart';

import '../../../../core/size_config.dart';

class FavoriteDetail extends StatefulWidget {
  final String foodImageName;
  final String foodName;
  final String foodCategory;
  final String foodPrice;

  const FavoriteDetail(
      {Key? key,
      required this.foodImageName,
      required this.foodName,
      required this.foodCategory,
      required this.foodPrice})
      : super(key: key);

  @override
  State<FavoriteDetail> createState() => _FavoriteDetailState();
}

class _FavoriteDetailState extends State<FavoriteDetail> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: SizeConfig.screenHeight! / 6.2,
                  width: SizeConfig.screenWidth! / 2.055,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.foodImageName),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                  ),
                ),
                Positioned(
                    top: SizeConfig.screenHeight! / 56.92,
                    right: SizeConfig.screenWidth! / 34.25,
                    child: GestureDetector(
                      onTap: () {
                        print('Tap add FAVORITE: ${widget.foodName}');
                      },
                      child: const Icon(
                        Icons.favorite,
                        color: kMainColor,
                        size: 35,
                      ),
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    widget.foodName,
                    style: TextStyle(
                        color: kTxtListColor,
                        fontSize: SizeConfig.screenHeight! / 38.15,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    widget.foodCategory,
                    style: TextStyle(
                        color: kTxtListCategoryColor,
                        fontSize: SizeConfig.screenHeight! / 42.69,
                        fontWeight: FontWeight.w400),
                  ),
                  // Text(
                  //   "\$${widget.foodPrice}",
                  //   style: TextStyle(
                  //       color: kMainColor,
                  //       fontSize: SizeConfig.screenHeight! / 37.95,
                  //       fontWeight: FontWeight.bold),
                  // ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 8),
              child: Text(
                "\$${widget.foodPrice}",
                style: TextStyle(
                    color: kMainColor,
                    fontSize: SizeConfig.screenHeight! / 37.95,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: GestureDetector(
            onTap: () {
              print('Tap add card: ${widget.foodName}');
            },
            child: Container(
              height: SizeConfig.screenHeight! / 13.66,
              width: SizeConfig.screenWidth! / 8.22,
              decoration: const BoxDecoration(
                color: kMainColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0),
                ),
              ),
              child: const Icon(
                Icons.shopping_cart_rounded,
                color: kMainBgColor,
              ),
            ),
          ),
        )
      ],
    );
  }
}
