import 'package:flutter/material.dart';

import '../../../../core/const.dart';
import '../../../../core/size_config.dart';
import '../../../detail/ui/pages/detail_page.dart';
import '../../../home/data/models/food.dart';
import '../../../home/data/models/food_list.dart';
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
        child: FutureBuilder<List<Food>>(
            future: bringTheFoods(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var foodList = snapshot.data;
                return GridView.builder(
                    // shrinkWrap: true,
                    itemCount: 3,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 3 / 4,
                    ),
                    itemBuilder: (context, index) {
                      var food = foodList![index];
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
                                    borderRadius: BorderRadius.circular(30.0),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: const Offset(0, 3),
                                        blurRadius: 6,
                                        color: Colors.black.withOpacity(0.1),
                                      )
                                    ]),
                                child: FavoriteDetail(
                                    foodImageName: food.foodImageName,
                                    foodName: food.foodName,
                                    foodCategory: food.foodCategory,
                                    foodPrice: food.foodPrice)),
                          ),
                        ],
                      );
                    });
              } else {
                return Padding(
                  padding:
                      EdgeInsets.only(top: SizeConfig.screenHeight! / 3.10),
                  child: Column(
                    children: [
                      Center(
                          child: Icon(
                        Icons.favorite,
                        color: kTxtListCategoryColor,
                        size: SizeConfig.screenHeight! / 11.39,
                      )),
                      SizedBox(
                        height: SizeConfig.screenHeight! / 34.15,
                      ),
                      Center(
                          child: Text(
                        "Your Favorite Foods",
                        style: TextStyle(
                            color: kTxtListCategoryColor,
                            fontSize: SizeConfig.screenHeight! / 34.15),
                      ))
                    ],
                  ),
                );
              }
            }),
      ),
    );
  }
}
