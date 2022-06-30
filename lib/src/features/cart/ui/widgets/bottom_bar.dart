import 'package:flutter/material.dart';
import 'package:food_delivery/src/core/const.dart';

import '../../../../core/size_config.dart';
import '../../../detail/ui/widgets/separator.dart';
import 'bottombar_text.dart';
import '../components/checkout_button.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: SizeConfig.screenHeight! / 15.0,
        horizontal: SizeConfig.screenHeight! / 30.0,
      ),
      // height: 174,
      decoration: const BoxDecoration(
        color: kMainBgColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  EdgeInsets.only(bottom: SizeConfig.screenHeight! / 85.37),
              child: const MySeparator(
                color: kSeparatorColor,
              ),
            ),
            // ThreeDSecure(),
            SizedBox(
              height: SizeConfig.screenHeight! / 45.54,
            ),
            // BottomBarText(
            //     title_text: "Subtotal",
            //     price_text: "\$37.0",
            //     font_size: SizeConfig.screenHeight! / 45.54,
            //     fontWeight: FontWeight.w400,
            //     text_color: kTxtListColor),
            // SizedBox(
            //   height: SizeConfig.screenHeight! / 45.54,
            // ),
            // BottomBarText(
            //   title_text: "Discount",
            //   price_text: "\$2.0",
            //   font_size: SizeConfig.screenHeight! / 45.54,
            //   fontWeight: FontWeight.w400,
            //   text_color: Colors.black54,
            // ),
            // SizedBox(
            //   height: SizeConfig.screenHeight! / 45.54,
            // ),
            BottomBarText(
              titleText: "Total",
              priceText: "\$35.0",
              fontSize: SizeConfig.screenHeight! / 37.95,
              fontWeight: FontWeight.bold,
              textColor: kTxtMainColor,
            ),
            SizedBox(height: SizeConfig.screenHeight! / 34.15),
            // CheckoutButton(),
            InkWell(
              onTap: () {
                print('Tap CONFIRM ---->');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: SizeConfig.screenWidth! / 1.42,
                      height: SizeConfig.screenHeight! / 12.42,
                      decoration: BoxDecoration(
                          color: kMainColor,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                          child: Text(
                        "CONFIRM",
                        style: TextStyle(
                            color: kMainBgColor,
                            fontSize: SizeConfig.screenHeight! / 34.15,
                            fontWeight: FontWeight.bold),
                      ))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
