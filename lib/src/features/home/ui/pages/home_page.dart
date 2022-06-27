import 'package:flutter/material.dart';

import '../../../../core/const.dart';

// import 'package:food_order_ui/view/home_page/components/food_part.dart';
// import 'package:food_order_ui/view/home_page/widgets/categories.dart';
// import 'package:food_order_ui/view/home_page/widgets/discount_cart.dart';
// import 'package:food_order_ui/view/home_page/widgets/popular.dart';
// import 'package:food_order_ui/view/home_page/widgets/recommed.dart';
// import 'package:food_order_ui/view/home_page/widgets/search_food.dart';
// import 'package:food_order_ui/view/home_page/widgets/username_text.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kMainBgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // UserNameText(),
            // SearchFood(),
            // DiscountCard(),
            // FoodPart(partName: "Categories"),
            // CategoriesFood(),
            // FoodPart(partName: "Recommed"),
            // RecommedFoods(),
            // FoodPart(partName: "Popular"),
            // PopularFoods(),
          ],
        ),
      ),
    );
  }
}
