import 'package:flutter/material.dart';

import '../../../../core/const.dart';
import '../../../home/ui/components/size_config.dart';

class UserSection extends StatelessWidget {
  IconData iconName;
  String sectionText;
  IconData optionIcon;
  UserSection(
      {Key? key,
      required this.iconName,
      required this.sectionText,
      this.optionIcon = Icons.keyboard_arrow_right})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(SizeConfig.screenWidth! / 13.7, 15,
          SizeConfig.screenWidth! / 27.4, 15.0),
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
