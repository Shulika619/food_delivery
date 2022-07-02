import 'package:flutter/material.dart';
import 'package:food_delivery/src/core/const.dart';

import '../widgets/bottom_bar.dart';
import '../widgets/food_list_cart.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainBgColor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "My Cart",
          style: TextStyle(color: kTxtMainColor),
        ),
        elevation: 0,
        backgroundColor: kMainBgColor,
        // iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: const FoodListCartWidget(),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
