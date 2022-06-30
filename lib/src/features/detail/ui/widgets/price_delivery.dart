import 'package:flutter/material.dart';
import 'package:food_delivery/src/core/const.dart';

import '../../../../core/size_config.dart';
import '../../../home/data/models/food.dart';

class PriceDelivery extends StatefulWidget {
  final Food food;
  const PriceDelivery({Key? key, required this.food}) : super(key: key);

  @override
  State<PriceDelivery> createState() => _PriceDeliveryState();
}

class _PriceDeliveryState extends State<PriceDelivery> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: SizeConfig.screenHeight! / 55),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: SizeConfig.screenWidth! / 90),
                child: Icon(
                  Icons.delivery_dining_sharp,
                  color: kMainColor,
                  size: SizeConfig.screenHeight! / 22.77,
                ),
              ),
              Text(
                "FREE DELIVERY",
                style: TextStyle(
                    color: kSecondColor,
                    fontWeight: FontWeight.bold,
                    fontSize: SizeConfig.screenHeight! / 42.69),
              ),
            ],
          ),
          // Container(
          //   height: SizeConfig.screenHeight! / 34.15,
          //   width: SizeConfig.screenWidth! / 137,
          //   decoration: BoxDecoration(
          //       color: Colors.black12, borderRadius: BorderRadius.circular(10)),
          // ),
          // const Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: SizeConfig.screenWidth! / 50),
                child: Text(
                  "\$${widget.food.foodPrice}",
                  style: TextStyle(
                      color: kMainColor,
                      fontSize: SizeConfig.screenHeight! / 22.77,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
