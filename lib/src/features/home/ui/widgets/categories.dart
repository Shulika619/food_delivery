import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/const.dart';
import '../../../../core/size_config.dart';
import '../../bloc/menu_bloc.dart';
import '../../data/repositories/menu_repository.dart';
import '../pages/category_page.dart';

class CategoriesFood extends StatefulWidget {
  const CategoriesFood({Key? key}) : super(key: key);

  @override
  State<CategoriesFood> createState() => _CategoriesFoodState();
}

class _CategoriesFoodState extends State<CategoriesFood> {
  final categoriesRepo = MenuRepository();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MenuBloc, MenuState>(
      builder: (context, state) {
        return state.when(
            initData: (discountList, catogoriesList, foodList) =>
                const Center(child: CircularProgressIndicator()),
            data: (discountList, catogoriesList, foodList) {
              return catogoriesList.isEmpty
                  ? const SizedBox()
                  : SizedBox(
                      height: SizeConfig.screenHeight! / 8.04,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: catogoriesList.length,
                        itemBuilder: (context, index) {
                          var category = catogoriesList[index];
                          return Column(
                            children: [
                              GestureDetector(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            CategoryPage(category: category))),
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
                                      fontSize:
                                          SizeConfig.screenHeight! / 52.54,
                                      color: kTxtListColor),
                                )
                              ]),
                            ],
                          );
                        },
                      ),
                    );
            });
      },
    );
  }
}
