import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/src/features/profile/ui/widgets/show_edit_dialog.dart';

import '../../../../core/const.dart';
import '../../../home/ui/components/size_config.dart';
import '../../cubit/user_cubit.dart';
import '../../data/model/user_model.dart';
import 'custom_shape.dart';

class AvatarEditWidget extends StatelessWidget {
  const AvatarEditWidget(this.editDialog, this.userCubit, this.user, [Key? key])
      : super(key: key);

  final UserProfileCubit userCubit;
  final UserModel user;
  final ShowEditDialog editDialog;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.screenHeight! / 2.84, // 240.0
      child: Stack(
        children: [
          ClipPath(
              clipper: CustomShape(),
              child: Container(
                  height: SizeConfig.screenHeight! / 4.56, // 150.0
                  color: kMainColor)),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () async {
                    final dialogData =
                        await editDialog.openDialog(context, 'photo url');
                    if (dialogData != null && dialogData != '') {
                      await userCubit.updatePhotoURL(dialogData);
                    }
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    height: SizeConfig.screenHeight! / 4.88, // 140.0
                    width: SizeConfig.screenWidth! / 2.93, // 140.0
                    child: CircleAvatar(
                      radius: 56,
                      backgroundColor: kMainBgColor,
                      child: Padding(
                        padding: const EdgeInsets.all(8), // Border radius
                        child: ClipOval(
                          child: CachedNetworkImage(
                            imageUrl: user.img!,
                            placeholder: (context, url) =>
                                const CircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error, size: 40),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight! / 15),
              ],
            ),
          ),
          Positioned(
            bottom: SizeConfig.screenHeight! / 9,
            right: SizeConfig.screenWidth! / 2.9,
            child: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 3, color: kMainBgColor),
                    color: kSecondColor),
                child: const Icon(Icons.edit, color: kMainBgColor)),
          ),
        ],
      ),
    );
  }
}
