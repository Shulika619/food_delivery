// import 'package:flutter/material.dart';
// import 'package:food_delivery/src/features/home/ui/pages/menu_page.dart';

// import '../../../../core/colors.dart';
// import '../../../../core/size_config.dart';

// class OkButton extends StatefulWidget {
//   const OkButton({Key? key}) : super(key: key);

//   @override
//   _OkButtonState createState() => _OkButtonState();
// }

// class _OkButtonState extends State<OkButton> {
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         Navigator.of(context).pushReplacement(
//             MaterialPageRoute(builder: (context) => MenuPage()));
//       },
//       child: Container(
//           width: SizeConfig.screenWidth! / 2,
//           height: SizeConfig.screenHeight! / 12.42,
//           decoration: BoxDecoration(
//               color: buttonColor, borderRadius: BorderRadius.circular(30)),
//           child: Center(
//               child: Text(
//             "OK",
//             style: TextStyle(
//                 color: Colors.white,
//                 fontSize: SizeConfig.screenHeight! / 37.95),
//           ))),
//     );
//   }
// }
