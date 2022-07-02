import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/src/features/favorite/ui/widgets/no_favorite.dart';
import 'package:food_delivery/src/features/home/bloc/menu_bloc.dart';

import '../../../../core/const.dart';
import '../../../../core/size_config.dart';
import '../../../detail/ui/pages/detail_page.dart';
import '../../../home/data/models/food.dart';
import '../../../profile/cubit/user_cubit.dart';
import '../widgets/favorite_detail.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    // final favorIdList = context.watch<UserProfileCubit>().getUser.favoriteList;
    final userProfile = context.watch<UserProfileCubit>();
    return Scaffold(
      backgroundColor: kMainBgColor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("My Favorite"),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.screenWidth! / 30.0,
            vertical: SizeConfig.screenHeight! / 136.6),
        child: BlocBuilder<MenuBloc, MenuState>(builder: (context, state) {
          return state.when(
              initData: (listDiscount, listCategories, listFood) =>
                  const SizedBox(),
              data: (listDiscount, listCategories, listFood) {
                List<Food> filterFavFoodList = listFood
                    .where((e) => userProfile.isFoodFavorite(e.foodId))
                    .toList();
                return filterFavFoodList.isEmpty
                    ? const NoFavorite()
                    : GridView.builder(
                        itemCount: filterFavFoodList.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          childAspectRatio: 3 / 4,
                        ),
                        itemBuilder: (context, index) {
                          var food = filterFavFoodList[index];
                          return Stack(
                            children: [
                              GestureDetector(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            DetailPage(food: food))),
                                child: Container(
                                    height: SizeConfig.screenHeight! / 3.10,
                                    width: SizeConfig.screenWidth! / 2.06,
                                    decoration: BoxDecoration(
                                        color: kMainBgColor,
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        boxShadow: [
                                          BoxShadow(
                                            offset: const Offset(0, 3),
                                            blurRadius: 6,
                                            color:
                                                Colors.black.withOpacity(0.1),
                                          )
                                        ]),
                                    child: FavoriteDetail(
                                      food: food,
                                    )),
                              ),
                            ],
                          );
                        });
              });
        }),
      ),
    );
  }
}
