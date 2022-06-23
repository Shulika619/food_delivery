import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/const.dart';
import '../../../auth/bloc/auth/auth_bloc.dart';
import '../../../home/ui/components/size_config.dart';
import '../widgets/top_custom_shape.dart';
import '../widgets/user_sections.dart';
import 'my_info.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainBgColor,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text("Profile"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TopCustomShape(),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    context.read<AuthBloc>().add(const AuthEvent.logOut());
                  },
                  child:
                      Text('LogOut', style: TextStyle(color: kBtnTextColor))),
            ],
          ),
          SizedBox(
            height: SizeConfig.screenHeight! / 34.15,
          ),

          /// 20.0
          GestureDetector(
            child: UserSection(
                iconName: Icons.account_circle, sectionText: "My information"),
            onTap: () => Navigator.pushNamed(context, MyInfo.routeName),
          ),

          UserSection(
              iconName: Icons.location_city,
              sectionText: "Address information"),
          UserSection(
              iconName: Icons.shopping_basket, sectionText: "Past orders"),

          //! Future features
          // UserSection(iconName: Icons.credit_card, sectionText: "Credit Card"),
          // UserSection(iconName: Icons.wallet_giftcard, sectionText: "Coupons"),
        ],
      ),
    );
  }
}
