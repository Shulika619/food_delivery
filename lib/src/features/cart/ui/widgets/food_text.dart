import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/src/core/const.dart';

import '../../../../core/size_config.dart';
import '../../../home/data/models/food.dart';
import '../../data/bloc/cart/cart_bloc.dart';

class FoodText extends StatefulWidget {
  final Food food;
  final int foodQuantity;
  const FoodText({Key? key, required this.food, required this.foodQuantity})
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
        Text(widget.food.foodName,
            style: TextStyle(
                color: kTxtMainColor,
                fontWeight: FontWeight.w500,
                fontSize: SizeConfig.screenHeight! / 42.69),
            maxLines: 2),
        SizedBox(height: SizeConfig.screenHeight! / 48),
        Row(
          children: [
            Text(
              "\$${widget.food.foodPrice}",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kMainColor,
                  fontSize: SizeConfig.screenHeight! / 37.95),
            ),
            SizedBox(width: SizeConfig.screenWidth! / 20),
            CircleAvatar(
              child: IconButton(
                  onPressed: () {
                    context
                        .read<CartBloc>()
                        .add(CartEvent.decrementItem(food: widget.food));
                  },
                  icon: const Icon(
                    Icons.remove,
                    color: kMainColor,
                  )),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.screenWidth! / 25),
              child: Text("${widget.foodQuantity}",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: SizeConfig.screenHeight! / 40,
                  )),
            ),
            CircleAvatar(
                child: IconButton(
                    onPressed: () {
                      context
                          .read<CartBloc>()
                          .add(CartEvent.incrementItem(food: widget.food));
                    },
                    icon: const Icon(
                      Icons.add,
                      color: kMainColor,
                    ))),
            // Text("${widget.foodQuantity * double.parse(widget.food.foodPrice)}",
            //     style: TextStyle(fontSize: SizeConfig.screenHeight! / 40)),
          ],
        ),
      ],
    );
  }
}
