import 'package:flutter/material.dart';
import 'package:food_delivery/src/core/const.dart';
import 'package:food_delivery/src/features/detail/ui/widgets/food_image.dart';

import '../../../../core/size_config.dart';
import '../../../home/data/models/food.dart';
import '../widgets/detail_widget.dart';

class DetailPage extends StatefulWidget {
  final Food food;
  const DetailPage({Key? key, required this.food}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kMainBgColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            FoodImage(food: widget.food),
            DetailWidget(food: widget.food),
          ],
        ),
      ),
    );
  }
}
