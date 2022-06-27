import 'package:flutter/material.dart';

import '../../../../core/size_config.dart';
import '../widgets/lottie_widget.dart';
import '../widgets/ok_button.dart';
import '../widgets/router_text.dart';

class CheckCart extends StatelessWidget {
  const CheckCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        LottieWidget(),
        RouterText(),
        SizedBox(
          height: SizeConfig.screenHeight! / 68.3,
        ),
        OkButton(),
      ]),
    );
  }
}
