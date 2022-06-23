import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../../core/const.dart';
import '../../../home/ui/components/size_config.dart';
import '../widgets/custom_shape.dart';

class MyInfo extends StatefulWidget {
  const MyInfo({Key? key}) : super(key: key);

  static const routeName = '/my-info';

  @override
  State<MyInfo> createState() => _MyInfoState();
}

class _MyInfoState extends State<MyInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SizeConfig.screenHeight! / 2.84,

              /// 240.0
              child: Stack(
                children: [
                  ClipPath(
                    clipper: CustomShape(),
                    child: Container(
                      height: SizeConfig.screenHeight! / 4.56,

                      /// 150.0
                      color: kMainColor,
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          height: SizeConfig.screenHeight! / 4.88,

                          /// 140.0
                          width: SizeConfig.screenWidth! / 2.93,

                          /// 140.0
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: kMainBgColor,
                                width: SizeConfig.screenWidth! / 51.37),
                            color: kMainBgColor,
                            // image: DecorationImage(
                            //     image: widget.user.photoURL != null
                            //         ? NetworkImage(widget.user.photoURL!)
                            //         : const AssetImage("assets/main/avatar.png")
                            //             as ImageProvider),
                          ),
                        ),

                        // Text(widget.user.displayName ?? "Anonymous",
                        //     style: const TextStyle(fontSize: 22)),
                        SizedBox(
                          height: SizeConfig.screenHeight! / 136.6,
                        ),

                        /// 5.0
                        // Text(widget.user.email ?? "",
                        //     style: TextStyle(
                        //         fontWeight: FontWeight.w400, color: kTexthint)),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
