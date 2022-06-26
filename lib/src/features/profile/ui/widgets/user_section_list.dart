import 'package:flutter/material.dart';
import 'package:food_delivery/src/features/profile/ui/widgets/show_edit_dialog.dart';
import 'package:food_delivery/src/features/profile/ui/widgets/user_sections.dart';

import '../../cubit/user_cubit.dart';

class UserSectionList extends StatelessWidget {
  const UserSectionList(this.editDialog, this.userCubit, [Key? key])
      : super(key: key);

  final ShowEditDialog editDialog;
  final UserProfileCubit userCubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () async {
            final dialogData = await editDialog.openDialog(context, 'name');
            if (dialogData != null && dialogData != '') {
              await userCubit.updateDisplayName(dialogData);
            }
          },
          child: UserSection(
              iconName: Icons.person,
              sectionText: userCubit.getUser.name ?? 'Anonumus',
              optionIcon: Icons.edit),
        ),
        InkWell(
          onTap: () async {
            final dialogData =
                await editDialog.openDialog(context, 'phone number');
            if (dialogData != null && dialogData != '') {
              await userCubit.updatePhone(dialogData);
            }
          },
          child: UserSection(
              iconName: Icons.phone,
              sectionText: userCubit.getUser.phone ?? 'add phone number',
              optionIcon: Icons.edit),
        ),
        InkWell(
          onTap: () async {
            final dialogData = await editDialog.openDialog(context, 'address');
            if (dialogData != null && dialogData != '') {
              await userCubit.updateAddress(dialogData);
            }
          },
          child: UserSection(
              iconName: Icons.location_city,
              sectionText: userCubit.getUser.address ?? 'add address',
              optionIcon: Icons.edit),
        ),
        InkWell(
          onTap: () async {
            final dialogData = await editDialog.openDialog(context, 'email');
            if (dialogData != null && dialogData != '') {
              await userCubit.updateEmail(dialogData);
            }
          },
          child: UserSection(
              iconName: Icons.email,
              sectionText: userCubit.getUser.email,
              optionIcon: Icons.edit),
        ),
        InkWell(
          onTap: () async {
            final dialogData = await editDialog.openDialog(context, 'password');
            if (dialogData != null && dialogData != '') {
              await userCubit.updatePassword(dialogData);
            }
          },
          child: UserSection(
              iconName: Icons.security,
              sectionText: "******",
              optionIcon: Icons.edit),
        ),
      ],
    );
  }
}
