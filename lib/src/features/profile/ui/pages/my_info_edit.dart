import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/const.dart';
import '../../../home/ui/components/size_config.dart';
import '../../cubit/user_cubit.dart';
import '../widgets/custom_shape.dart';
import '../widgets/user_sections.dart';

class MyInfoEdit extends StatefulWidget {
  const MyInfoEdit({Key? key}) : super(key: key);

  static const routeName = '/my-info';

  @override
  State<MyInfoEdit> createState() => _MyInfoEditState();
}

class _MyInfoEditState extends State<MyInfoEdit> {
  @override
  Widget build(BuildContext context) {
    final userCubit = context.watch<UserProfileCubit>();
    // final user = userCubit.getUser;
    // final currentState = context.watch<UserCubit>().state;

    return BlocBuilder<UserProfileCubit, UserProfileState>(
        builder: (context, state) {
      return state.maybeWhen(
        orElse: () => const SizedBox(),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        successfull: (user) => Scaffold(
          appBar: AppBar(
              title: const Text('Edit Profile'),
              centerTitle: true,
              elevation: 0),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
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
                                userCubit.updatePhotoURL(
                                    'https://pbs.twimg.com/media/DJi3pUDWsAIx9xQ.jpg');
                                // 'https://sbbusiness.ru/upload/resize_cache/iblock/7d0/308_210_1/7d0807e985f92071fee80d489f56d28f.jpg');
                              },
                              child: Container(
                                margin: const EdgeInsets.only(bottom: 10),
                                height:
                                    SizeConfig.screenHeight! / 4.88, // 140.0
                                width: SizeConfig.screenWidth! / 2.93, // 140.0
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: kMainBgColor,
                                      width: SizeConfig.screenWidth! / 51.37),
                                  color: kMainBgColor,
                                  image: DecorationImage(
                                      image: user.img != null && user.img != ''
                                          ? NetworkImage(user.img!)
                                          : const AssetImage(
                                                  "assets/main/avatar.png")
                                              as ImageProvider),
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
                                border:
                                    Border.all(width: 3, color: kMainBgColor),
                                color: kSecondaryColor),
                            child: Icon(Icons.edit, color: kMainBgColor)),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () async {
                    userCubit.updateDisplayName('New name77');
                  },
                  child: UserSection(
                      iconName: Icons.person,
                      sectionText: userCubit.getUser.name ?? 'Anonumus',
                      optionIcon: Icons.edit),
                ),
                InkWell(
                  onTap: () async {
                    userCubit.updateEmail('test3@test.com');
                  },
                  child: UserSection(
                      iconName: Icons.email,
                      sectionText: userCubit.getUser.email,
                      optionIcon: Icons.edit),
                ),
                InkWell(
                  onTap: () async {
                    userCubit.updatePassword('1233211');
                  },
                  child: UserSection(
                      iconName: Icons.security,
                      sectionText: "******",
                      optionIcon: Icons.edit),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
