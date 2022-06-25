import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/const.dart';
import '../../../profile/cubit/user_cubit.dart';
import '../../../profile/ui/pages/profile_page.dart';
import '../components/size_config.dart';
import 'home_page.dart';
// import 'package:food_order_ui/view/cart_page/cart_view.dart';
// import 'package:food_order_ui/view/favorite_page/favorite_page_view.dart';
// import 'package:food_order_ui/view/search_page/search_page_view.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  static const routeName = '/main';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    super.initState();
    context.read<UserProfileCubit>().initData();
    print('++++ Init CubitProfile in MAIN +++++');
  }

  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int index = 0;

  final screen = [
    HomePage(),
    // SearchPageView(),
    // CartView(),
    // FavoritePageView(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final items = [
      /// 30.0
      Icon(Icons.home, size: SizeConfig.screenHeight! / 22.77),
      // Icon(Icons.search, size: SizeConfig.screenHeight! / 22.77),
      // Icon(Icons.shopping_cart, size: SizeConfig.screenHeight! / 22.77),
      // Icon(Icons.favorite, size: SizeConfig.screenHeight! / 22.77),
      Icon(Icons.person, size: SizeConfig.screenHeight! / 22.77),
    ];
    // Size size = MediaQuery.of(context).size;
    return Container(
      color: kButtonColor,
      child: SafeArea(
        top: false,
        child: Scaffold(
          extendBody: true,
          backgroundColor: kMainBgColor,
          body: screen[index],
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(iconTheme: IconThemeData(color: kMainBgColor)),
            child: CurvedNavigationBar(
              key: navigationKey,
              color: kSecondaryColor,
              backgroundColor: Colors.transparent,
              buttonBackgroundColor: kMainColor,
              height: SizeConfig.screenHeight! / 11.39, // 60.0
              animationCurve: Curves.easeInOut,
              animationDuration: const Duration(milliseconds: 400),
              index: index,
              items: items,
              onTap: (i) => setState(() => index = i),
            ),
          ),
        ),
      ),
    );
  }
}
