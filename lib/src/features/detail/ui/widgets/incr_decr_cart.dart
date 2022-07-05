import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/src/core/const.dart';

import '../../../../core/size_config.dart';
import '../../../cart/bloc/cart/cart_bloc.dart';
import '../../../home/data/models/food.dart';
import 'separator.dart';

class IncreaseDecreaseCart extends StatefulWidget {
  final Food food;
  const IncreaseDecreaseCart({Key? key, required this.food}) : super(key: key);

  @override
  State<IncreaseDecreaseCart> createState() => _IncreaseDecreaseCartState();
}

class _IncreaseDecreaseCartState extends State<IncreaseDecreaseCart> {
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
          Padding(
            padding: EdgeInsets.fromLTRB(
                SizeConfig.screenWidth! / 20.55,
                SizeConfig.screenHeight! / 34.15,
                SizeConfig.screenWidth! / 20.55,
                0),
            child: Container(
              decoration: BoxDecoration(
                color: kThirdColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  minimumSize: MaterialStateProperty.all(Size(
                      SizeConfig.screenWidth! / 1.37,
                      SizeConfig.screenHeight! / 11.66)),
                ),
                onPressed: () {
                  context.read<CartBloc>().add(
                      CartEvent.addItem(food: widget.food, quantity: _counter));
                  Navigator.pop(context);
                },
                child: Wrap(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          right: SizeConfig.screenWidth! / 51.38),
                      child: const Icon(
                        Icons.shopping_cart_rounded,
                        color: kMainBgColor,
                      ),
                    ),
                    Text(
                      "Add to Cart",
                      style: TextStyle(
                        fontSize: SizeConfig.screenHeight! / 34.15,
                        fontWeight: FontWeight.w700,
                        color: kMainBgColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
