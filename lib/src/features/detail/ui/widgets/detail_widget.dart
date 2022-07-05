import 'package:flutter/material.dart';
import 'package:food_delivery/src/core/const.dart';
import 'package:food_delivery/src/features/detail/ui/widgets/incr_decr_cart.dart';
import '../../../../core/size_config.dart';
import '../../../home/data/models/food.dart';
import 'price_delivery.dart';
import 'food_description.dart';
import 'food_name.dart';

class DetailWidget extends StatefulWidget {
  final Food food;
  const DetailWidget({Key? key, required this.food}) : super(key: key);

  @override
  State<DetailWidget> createState() => _DetailWidgetState();
}

class _DetailWidgetState extends State<DetailWidget> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsets.only(top: SizeConfig.screenHeight! * 0.35),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: kMainBgColor,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Container(
              width: SizeConfig.screenWidth! / 3.43,
              height: SizeConfig.screenHeight! / 227.67,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black12),
            ),
            SizedBox(
              height: SizeConfig.screenHeight! / 34.15,
            ),
            FoodName(food: widget.food),
            PriceDelivery(food: widget.food),
            const FoodDescription(),
            // FeaturesFood(),
            IncreaseDecreaseCart(food: widget.food),
          ],
        ),
      ),
    );
  }
}
