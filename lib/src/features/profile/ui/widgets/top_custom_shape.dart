import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/const.dart';
import '../../../home/ui/components/size_config.dart';
import '../../cubit/user_cubit.dart';
import 'custom_shape.dart';

class TopCustomShape extends StatefulWidget {
  const TopCustomShape({Key? key}) : super(key: key);

  @override
  State<TopCustomShape> createState() => _TopCustomShapeState();
}

class _TopCustomShapeState extends State<TopCustomShape> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserProfileCubit, UserProfileState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const Center(child: CircularProgressIndicator()),
          successfull: (user) => SizedBox(
            height: SizeConfig.screenHeight! / 2.84, // 240.0
            child: Stack(
              children: [
                ClipPath(
                  clipper: CustomShape(),
                  child: Container(
                      height: SizeConfig.screenHeight! / 4.56, // 150.0
                      color: kMainColor),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
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
                                    const Icon(Icons.error),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(user.name!, style: const TextStyle(fontSize: 22)),
                      SizedBox(height: SizeConfig.screenHeight! / 136.6),
                      Text(user.email,
                          style: const TextStyle(
                              fontWeight: FontWeight.w400, color: kTexthint)),
                      SizedBox(height: SizeConfig.screenHeight! / 136.6),
                      Text(user.phone ?? "",
                          style: const TextStyle(
                              fontWeight: FontWeight.w400, color: kTexthint)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
