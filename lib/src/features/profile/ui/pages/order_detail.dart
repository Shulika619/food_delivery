import 'package:flutter/material.dart';
import 'package:food_delivery/src/features/cart/data/models/order_item.dart';
import 'package:intl/intl.dart';

import '../../../../core/const.dart';
import '../../../../core/size_config.dart';
import '../../../cart/ui/widgets/bottombar_text.dart';
import '../../../cart/ui/widgets/food_image.dart';
import '../../../detail/ui/widgets/separator.dart';

class OrderDetailPage extends StatefulWidget {
  const OrderDetailPage({Key? key, required this.orderItem}) : super(key: key);

  final OrderItem orderItem;

  @override
  State<OrderDetailPage> createState() => _OrderDetailPageState();
}

class _OrderDetailPageState extends State<OrderDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(DateFormat.yMMMMEEEEd().format(widget.orderItem.dateTime!)),
        centerTitle: true,
      ),
      backgroundColor: kMainBgColor,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: widget.orderItem.items.length,
                  itemBuilder: (context, index) {
                    var cartItem = widget.orderItem.items[index];
                    return Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: SizeConfig.screenHeight! / 68.3),
                      child: Container(
                        margin: const EdgeInsets.only(right: 5),
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
                            FoodImage(foodImage: cartItem.food.foodImageName),
                            SizedBox(width: SizeConfig.screenWidth! / 20.55),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(cartItem.food.foodName,
                                    style: TextStyle(
                                        color: kTxtMainColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize:
                                            SizeConfig.screenHeight! / 42.69),
                                    maxLines: 2),
                                SizedBox(height: SizeConfig.screenHeight! / 48),
                                Row(
                                  children: [
                                    Text(
                                      "\$${cartItem.food.foodPrice}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: kMainColor,
                                          fontSize:
                                              SizeConfig.screenHeight! / 37.95),
                                    ),
                                    SizedBox(
                                        width: SizeConfig.screenWidth! / 20),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal:
                                              SizeConfig.screenWidth! / 25),
                                      child: Text("x${cartItem.quantity}",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize:
                                                SizeConfig.screenHeight! / 40,
                                          )),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(
                  SizeConfig.screenHeight! / 30.0,
                  5,
                  SizeConfig.screenHeight! / 30.0,
                  SizeConfig.screenHeight! / 15.0),
              decoration: const BoxDecoration(
                color: kMainBgColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: SafeArea(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: SizeConfig.screenHeight! / 85.37),
                      child: const MySeparator(
                        color: kSeparatorColor,
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight! / 45.54,
                    ),
                    BottomBarText(
                      titleText: "Total",
                      priceText: "\$${widget.orderItem.amount}",
                      fontSize: SizeConfig.screenHeight! / 37.95,
                      fontWeight: FontWeight.bold,
                      textColor: kTxtMainColor,
                    ),
                    SizedBox(height: SizeConfig.screenHeight! / 34.15),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
