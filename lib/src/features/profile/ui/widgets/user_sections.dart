import 'package:flutter/material.dart';

import '../../../../core/const.dart';
import '../../../../core/size_config.dart';

class UserSection extends StatelessWidget {
  final IconData iconName;
  final String sectionText;
  final IconData optionIcon;
  const UserSection(
      {Key? key,
      required this.iconName,
      required this.sectionText,
      this.optionIcon = Icons.keyboard_arrow_right})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: SizeConfig.screenWidth! / 27.4,
        horizontal: SizeConfig.screenWidth! / 13.7,
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
            optionIcon,
            color: kIconListColor,
            size: SizeConfig.screenHeight! / 27,
          )

          /// 32
        ],
      ),
    );
  }
}
