import 'package:flutter/material.dart';

import '../../../../core/size_config.dart';
import '../../../home/data/models/food.dart';
import '../../../home/data/models/food_list.dart';
import '../widgets/favorite_cart_icon.dart';
import '../widgets/favorite_icon.dart';
import '../widgets/favorite_image.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My Favorite",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.screenWidth! / 20.0,
            vertical: SizeConfig.screenHeight! / 136.6),

        /// 20.0 - 5.0
        child: FutureBuilder<List<Food>>(
            future: bringTheFoods(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var foodList = snapshot.data;
                return GridView.builder(
                    itemCount: 3,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      childAspectRatio: 3.2 / 4,
                    ),
                    itemBuilder: (context, index) {
                      var food = foodList![index];
                      return Stack(
                        children: [
                          Container(
                              height: SizeConfig.screenHeight! / 3.10,

                              /// 220.0
                              width: SizeConfig.screenWidth! / 2.06,

                              /// 200.0
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30.0),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, 3),
                                      blurRadius: 6,
                                      color: Colors.black.withOpacity(0.1),
                                    )
                                  ]),
                              child: Stack(
                                children: [
                                  FavoriteDetail(
                                      food_image_name: food.foodImageName,
                                      food_name: food.foodName,
                                      food_category: food.foodCategory,
                                      food_price: food.foodPrice),
                                  FavoriteCartIcon(),
                                  FavoriteIcon(),
                                ],
                              )),
                        ],
                      );
                    });
              } else {
                return Padding(
                  padding:
                      EdgeInsets.only(top: SizeConfig.screenHeight! / 3.10),

                  /// 200.0
                  child: Column(
                    children: [
                      Center(
                          child: Icon(
                        Icons.favorite,
                        color: Colors.black12,
                        size: SizeConfig.screenHeight! / 11.39,
                      )),

                      /// 60.0
                      SizedBox(
                        height: SizeConfig.screenHeight! / 34.15,
                      ),

                      /// 20.0
                      Center(
                          child: Text(
                        "Your Favorite Foods",
                        style: TextStyle(
                            color: Colors.black12,
                            fontSize: SizeConfig.screenHeight! / 34.15),
                      ))

                      /// 20.0
                    ],
                  ),
                );
              }
            }),
      ),
    );
  }
}
