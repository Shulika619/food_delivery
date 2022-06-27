import 'package:flutter/material.dart';

import '../../../../core/size_config.dart';
import '../../../cart/ui/widgets/food_list_widget/food_image.dart';
import '../../../home/data/models/food.dart';
import '../widgets/detail_widget.dart';

class DetailPage extends StatefulWidget {
  Food food;
  DetailPage({required this.food});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // FoodImage(food: widget.food),
            DetailWidget(
              food: widget.food,
            ),
          ],
        ),
      ),
    );
  }
}
