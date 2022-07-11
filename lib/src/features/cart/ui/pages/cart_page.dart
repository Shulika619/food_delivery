import 'package:flutter/material.dart';
import 'package:food_delivery/src/core/const.dart';

import '../widgets/food_list_cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainBgColor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("My Cart", style: TextStyle(color: kTxtMainColor)),
        elevation: 0,
        backgroundColor: kMainBgColor,
      ),
      body: const FoodListCartWidget(),
    );
  }
}
