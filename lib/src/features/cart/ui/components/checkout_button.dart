// import 'package:flutter/material.dart';
// import 'package:food_delivery/src/core/const.dart';

// import '../../../../../core/size_config.dart';
// import '../../pages/checkout_page.dart';

// class CheckoutButton extends StatefulWidget {
//   const CheckoutButton({Key? key}) : super(key: key);

//   @override
//   State<CheckoutButton> createState() => _CheckoutButton();
// }

// class _CheckoutButton extends State<CheckoutButton> {
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         Navigator.of(context)
//             .push(MaterialPageRoute(builder: (context) => CheckoutPage()));
//       },
//       child: Container(
//           width: SizeConfig.screenWidth! / 1.02,
//           height: SizeConfig.screenHeight! / 12.42,
//           decoration: BoxDecoration(
//               color: kMainColor, borderRadius: BorderRadius.circular(30)),
//           child: Center(
//               child: Text(
//             "Checkout",
//             style: TextStyle(
//                 color: kMainBgColor,
//                 fontSize: SizeConfig.screenHeight! / 34.15,
//                 fontWeight: FontWeight.bold),
//           ))),
//     );
//   }
// }
