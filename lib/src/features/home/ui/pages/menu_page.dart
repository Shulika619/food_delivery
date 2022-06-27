import 'package:flutter/material.dart';

import '../../../../core/const.dart';
import '../widgets/categories.dart';
import '../widgets/discount_cart.dart';
import '../widgets/food_part.dart';
import '../widgets/popular.dart';
import '../widgets/recommed.dart';
import '../widgets/search_food.dart';
import '../widgets/username_text.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kMainBgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            UserNameText(),
            SearchFood(),
            DiscountCard(),
            FoodPart(partName: "Categories"),
            CategoriesFood(),
            FoodPart(partName: "Recommed"),
            RecommedFoods(),
            FoodPart(partName: "Popular"),
            PopularFoods(),
          ],
        ),
      ),
    );
  }
}
