import 'package:flutter/material.dart';

import '../../../../const.dart';
import '../../../home/ui/components/size_config.dart';

class UserSection extends StatelessWidget {
  IconData iconName;
  String sectionText;
  UserSection({Key? key, required this.iconName, required this.sectionText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          SizeConfig.screenWidth! / 13.7,

          /// 30.0
          0,
          SizeConfig.screenWidth! / 27.4,

          /// 15.0
          SizeConfig.screenHeight! / 34.15

          /// 20.0
          ),
      child: Row(
        children: [
          Icon(
            iconName,
            color: kTxtListColor,
          ),
          SizedBox(
            width: SizeConfig.screenWidth! / 41.1,
          ),
          Text(
            sectionText,
            style: TextStyle(
                color: kTxtListColor,
                fontSize: SizeConfig.screenHeight! / 42.68),
          ),

          /// 16
          const Spacer(),
          Icon(
            Icons.keyboard_arrow_right,
            color: kIconListColor,
            size: SizeConfig.screenHeight! / 21.34,
          )

          /// 32
        ],
      ),
    );
  }
}
