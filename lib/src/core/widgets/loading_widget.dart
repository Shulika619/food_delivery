import 'package:flutter/material.dart';
import 'package:food_delivery/src/core/const.dart';
import 'package:loading_indicator/loading_indicator.dart';

class LoadingIndicatorWidget extends StatelessWidget {
  const LoadingIndicatorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: LoadingIndicator(
          indicatorType: Indicator.ballPulse,
          colors: [kThirdColor, kMainColor, kSecondColor],
          strokeWidth: 2,
        ),
      ),
    );
  }
}
