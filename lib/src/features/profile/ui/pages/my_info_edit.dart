import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/const.dart';
import '../../../../core/widgets/loading_widget.dart';
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
                                    // 'https://sbbusiness.ru/upload/resize_cache/iblock/7d0/308_210_1/7d0807e985f92071fee80d489f56d28f.jpg');
                                    'https://pbs.twimg.com/media/DJi3pUDWsAIx9xQ.jpg');
                              },
                              child: Container(
                                margin: const EdgeInsets.only(bottom: 10),
                                height:
                                    SizeConfig.screenHeight! / 4.88, // 140.0
                                width: SizeConfig.screenWidth! / 2.93, // 140.0
                                child: CircleAvatar(
                                  radius: 56,
                                  backgroundColor: kMainBgColor,
                                  child: Padding(
                                    padding: const EdgeInsets.all(
                                        8), // Border radius
                                    child: ClipOval(
                                      child: CachedNetworkImage(
                                        imageUrl: user.img!,
                                        placeholder: (context, url) =>
                                            const CircularProgressIndicator(),
                                        errorWidget: (context, url, error) =>
                                            const Icon(Icons.error),
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
                                border:
                                    Border.all(width: 3, color: kMainBgColor),
                                color: kSecondColor),
                            child: const Icon(Icons.edit, color: kMainBgColor)),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () async {
                    userCubit.updateDisplayName('New name');
                  },
                  child: UserSection(
                      iconName: Icons.person,
                      sectionText: userCubit.getUser.name ?? 'Anonumus',
                      optionIcon: Icons.edit),
                ),
                InkWell(
                  onTap: () async {
                    userCubit.updateEmail('test5@test.com');
                  },
                  child: UserSection(
                      iconName: Icons.email,
                      sectionText: userCubit.getUser.email,
                      optionIcon: Icons.edit),
                ),
                InkWell(
                  onTap: () async {
                    userCubit.updatePassword('123321');
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
