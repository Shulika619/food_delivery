import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/src/core/const.dart';
import 'package:food_delivery/src/features/cart/data/bloc/cart/cart_bloc.dart';
import 'package:food_delivery/src/features/cart/ui/widgets/bottom_bar.dart';

import 'package:lottie/lottie.dart';

import '../../../../core/size_config.dart';
import 'delete_icon_button.dart';
import 'food_image.dart';
import 'food_text.dart';

class FoodListCartWidget extends StatefulWidget {
  const FoodListCartWidget({Key? key}) : super(key: key);

  @override
  State<FoodListCartWidget> createState() => _FoodListState();
}

class _FoodListState extends State<FoodListCartWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth! / 20),
      child: BlocBuilder<CartBloc, CartState>(builder: (context, state) {
        return state.when(
            initial: () => SizedBox(
                    child: Center(
                  child: Lottie.network(
                      "https://assets10.lottiefiles.com/packages/lf20_peztuj79.json",
                      height: SizeConfig.screenHeight! / 6.83,
                      width: SizeConfig.screenWidth! / 4.11,
                      repeat: false),
                )),
            data: (order) => Column(children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: order.items.length,
                        itemBuilder: (context, index) {
                          var cartItem = order.items[index];
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: SizeConfig.screenHeight! / 68.3),
                            child: Dismissible(
                              key: UniqueKey(),
                              direction: DismissDirection.endToStart,
                              onDismissed: (direction) {
                                context.read<CartBloc>().add(
                                    CartEvent.deleteItem(food: cartItem.food));
                              },
                              background: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        SizeConfig.screenWidth! / 20.55),
                                decoration: BoxDecoration(
                                  color: kThirdColor,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Row(
                                  children: const [
                                    Spacer(),
                                    Icon(Icons.delete_outline)
                                  ],
                                ),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: kMainBgColor,
                                    borderRadius: BorderRadius.circular(30.0),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: const Offset(4, 6),
                                        blurRadius: 4,
                                        color: Colors.black.withOpacity(0.1),
                                      )
                                    ]),
                                child: Row(
                                  children: [
                                    FoodImage(
                                        foodImage: cartItem.food.foodImageName),
                                    SizedBox(
                                        width: SizeConfig.screenWidth! / 20.55),
                                    FoodText(
                                      food: cartItem.food,
                                      foodQuantity: cartItem.quantity,
                                    ),
                                    const Spacer(),
                                    DeleteIconButton(food: cartItem.food),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  BottomBar(amount: order.amount),
                ]));
      }),
    );
  }
}
