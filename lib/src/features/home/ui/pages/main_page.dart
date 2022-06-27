import 'package:curved_navigation_bar/curved_navigation_bar.dart';
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
    context.read<UserProfileCubit>().initData();
    super.initState();
    // TODO: other Init(adress, favorite, products)
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
      color: kThirdColor,
      child: SafeArea(
        top: false,
        child: Scaffold(
          extendBody: true,
          backgroundColor: kMainBgColor,
          body: screen[index],
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(iconTheme: const IconThemeData(color: kMainBgColor)),
            child: CurvedNavigationBar(
              key: navigationKey,
              color: kSecondColor,
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
