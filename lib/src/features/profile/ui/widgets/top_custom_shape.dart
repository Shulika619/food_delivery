import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/const.dart';
import '../../../auth/bloc/auth/auth_bloc.dart';
import '../../../home/ui/components/size_config.dart';
import 'custom_shape.dart';

class TopCustomShape extends StatefulWidget {
  const TopCustomShape({Key? key}) : super(key: key);

  @override
  State<TopCustomShape> createState() => _TopCustomShapeState();
}

class _TopCustomShapeState extends State<TopCustomShape> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return state.when(
          notAuthorized: () => const Center(child: CircularProgressIndicator()),
          authorized: (user) => SizedBox(
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
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: kMainBgColor,
                              width: SizeConfig.screenWidth! / 51.37),
                          color: kMainBgColor,
                          image: DecorationImage(
                              image: user.photoURL != null
                                  ? NetworkImage(user.photoURL!)
                                  : const AssetImage("assets/main/avatar.png")
                                      as ImageProvider),
                        ),
                      ),

                      Text(
                        user.displayName != null && user.displayName != ''
                            ? user.displayName!
                            : "Anonymous",
                        style: const TextStyle(fontSize: 22),
                      ),
                      SizedBox(height: SizeConfig.screenHeight! / 136.6),

                      /// 5.0
                      Text(
                        user.email ?? "",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, color: kTexthint),
                      ),
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
