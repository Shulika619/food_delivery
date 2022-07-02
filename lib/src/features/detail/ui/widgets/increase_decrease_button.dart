import 'package:flutter/material.dart';
import 'package:food_delivery/src/core/const.dart';

import '../../../../core/size_config.dart';
import '../../../home/data/models/food.dart';
import 'separator.dart';

class IncreaseDecrease extends StatefulWidget {
  final Food food;
  const IncreaseDecrease({Key? key, required this.food}) : super(key: key);

  @override
  State<IncreaseDecrease> createState() => _IncreaseDecreaseState();
}

class _IncreaseDecreaseState extends State<IncreaseDecrease> {
  int _counter = 1;

  void _increaseCart() {
    setState(() {
      _counter++;
    });
  }

  void _decreaseCart() {
    setState(() {
      if (_counter > 1) {
        _counter--;
      } else {
        _counter = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.only(top: SizeConfig.screenHeight! / 45.54),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: SizeConfig.screenHeight! / 68.3,
                bottom: SizeConfig.screenHeight! / 34.15),
            child: const MySeparator(
              color: kSeparatorColor,
            ),
          ),
          Text(
            "Total",
            style: TextStyle(
                color: kTxtListColor,
                fontSize: SizeConfig.screenHeight! / 42.69),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "\$${int.parse(widget.food.foodPrice) * _counter}",
                    style: TextStyle(
                        color: kTxtMainColor,
                        fontSize: SizeConfig.screenHeight! / 18.32,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      _decreaseCart();
                    },
                    child: Container(
                      height: SizeConfig.screenHeight! / 13.94,
                      width: SizeConfig.screenWidth! / 8.39,
                      decoration: BoxDecoration(
                        border: Border.all(color: kMainColor, width: 1),
                        borderRadius: BorderRadius.circular(15),
                        color: kBtnBgPlus.withOpacity(0.1),
                        //borderRadius: BorderRadius.circular(10)
                      ),
                      child: const Center(
                        child: Icon(Icons.remove, color: kMainColor),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: SizeConfig.screenWidth! / 6.85,
                    height: SizeConfig.screenHeight! / 13.94,
                    child: Center(
                      child: Text(
                        "$_counter",
                        style: TextStyle(
                            fontSize: SizeConfig.screenHeight! / 37.95,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      _increaseCart();
                    },
                    child: Container(
                      height: SizeConfig.screenHeight! / 13.94,
                      width: SizeConfig.screenWidth! / 8.39,
                      decoration: BoxDecoration(
                        border: Border.all(color: kMainColor, width: 1),
                        borderRadius: BorderRadius.circular(15),
                        color: kBtnBgPlus.withOpacity(0.1),
                      ),
                      child: const Center(
                        child: Icon(Icons.add, color: kMainColor),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
