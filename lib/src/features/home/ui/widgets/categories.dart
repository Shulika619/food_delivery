import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/src/core/const.dart';

import '../../../../core/size_config.dart';
import '../../data/models/category.dart';
import '../../data/models/food_list.dart';
import '../../data/repositories/categories_repository.dart';

class CategoriesFood extends StatefulWidget {
  const CategoriesFood({Key? key}) : super(key: key);

  @override
  State<CategoriesFood> createState() => _CategoriesFoodState();
}

class _CategoriesFoodState extends State<CategoriesFood> {
  final categoriesRepo = CategoriesRepository();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Category>>(
      future: categoriesRepo.fetchData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var categoryList = snapshot.data;
          return SizedBox(
            height: SizeConfig.screenHeight! / 8.04,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categoryList?.length,
              itemBuilder: (context, index) {
                var category = categoryList![index];
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        print('${category.categoryName}');
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(
                            SizeConfig.screenWidth! / 34.25,
                            SizeConfig.screenHeight! / 170.75,
                            SizeConfig.screenWidth! / 20.55,
                            SizeConfig.screenHeight! / 170.75),
                        height: SizeConfig.screenHeight! / 15.18,
                        width: SizeConfig.screenWidth! / 9.14,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: CachedNetworkImageProvider(
                                  category.categoryImage),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ),
                    Row(children: [
                      Text(
                        category.categoryName,
                        style: TextStyle(
                            fontSize: SizeConfig.screenHeight! / 52.54,
                            color: kTxtListColor),
                      )

                      /// 13
                    ]),
                  ],
                );
              },
            ),
          );
        } else {
          return const Center();
        }
      },
    );
  }
}
