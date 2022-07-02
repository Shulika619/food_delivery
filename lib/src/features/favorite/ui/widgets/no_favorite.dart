import 'package:flutter/material.dart';

import '../../../../core/const.dart';
import '../../../../core/size_config.dart';

class NoFavorite extends StatelessWidget {
  const NoFavorite({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: SizeConfig.screenHeight! / 3.10),
      child: Column(
        children: [
          Center(
              child: Icon(
            Icons.favorite,
            color: kMainColor,
            size: SizeConfig.screenHeight! / 11.39,
          )),
          SizedBox(
            height: SizeConfig.screenHeight! / 34.15,
          ),
          Center(
              child: Text(
            "Your Favorite Foods",
            style: TextStyle(
                color: kTxtListCategoryColor,
                fontSize: SizeConfig.screenHeight! / 34.15),
          ))
        ],
      ),
    );
  }
}
