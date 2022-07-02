import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/src/core/const.dart';

import '../../../../core/widgets/loading_widget.dart';
import '../../cubit/user_cubit.dart';
import '../widgets/avatar_edit_widget.dart';
import '../widgets/show_edit_dialog.dart';
import '../widgets/user_section_list.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  static const routeName = '/my-info';

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  ShowEditDialog editDialog = ShowEditDialog();

  @override
  Widget build(BuildContext context) {
    final userCubit = context.watch<UserProfileCubit>();

    return BlocBuilder<UserProfileCubit, UserProfileState>(
        builder: (context, state) {
      return state.maybeWhen(
        orElse: () => const SizedBox(),
        loading: () => const LoadingIndicatorWidget(),
        successfull: (user) => Scaffold(
          appBar: AppBar(
              title: const Text('Edit Profile'),
              centerTitle: true,
              elevation: 0),
          backgroundColor: kMainBgColor,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AvatarEditWidget(editDialog, userCubit, user),
                UserSectionList(editDialog, userCubit),
              ],
            ),
          ),
        ),
      );
    });
  }
}
