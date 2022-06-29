import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/src/features/home/data/models/food.dart';

import '../../../../core/const.dart';
import '../../../../core/size_config.dart';
import '../../../detail/ui/pages/detail_page.dart';
import '../../bloc/menu_bloc.dart';
import '../../data/models/category.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key, required this.category}) : super(key: key);

  final Category category;

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  final List<Food> foodList = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category.categoryName),
        centerTitle: true,
      ),
      body: BlocBuilder<MenuBloc, MenuState>(builder: (context, state) {
        return state.when(
            initData: (listDiscount, listCategories, listFood) =>
                const SizedBox(),
            data: (listDiscount, listCategories, listFood) {
              final data = listFood
                  .where((element) =>
                      element.foodCategory == widget.category.categoryName)
                  .toList();
              return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    var food = data[index];
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DetailPage(food: food))),
                          child: Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: SizeConfig.screenWidth! / 34.25,
                              vertical: SizeConfig.screenHeight! / 170.75,
                            ),
                            height: SizeConfig.screenHeight! / 3.73,
                            width: SizeConfig.screenWidth! / 1.050,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      offset: const Offset(4, 6),
                                      blurRadius: 4,
                                      color: Colors.black.withOpacity(0.3))
                                ]),
                            child: Stack(
                              fit: StackFit.expand,
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: CachedNetworkImageProvider(
                                                food.foodImageName),
                                            fit: BoxFit.cover),
                                        borderRadius:
                                            BorderRadius.circular(20))),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                Positioned(
                                    left: SizeConfig.screenWidth! / 34.25,
                                    bottom: SizeConfig.screenHeight! / 45.54,
                                    child: Container(
                                      padding: const EdgeInsets.all(10),
                                      // color: Colors.black.withOpacity(0.5),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(food.foodName,
                                              style: TextStyle(
                                                  fontSize:
                                                      SizeConfig.screenHeight! /
                                                          34.15,
                                                  color: kMainBgColor)),
                                          Text(food.foodCategory,
                                              style: TextStyle(
                                                  fontSize:
                                                      SizeConfig.screenHeight! /
                                                          48.79,
                                                  color: kMainBgColor)),
                                          Text("\$${food.foodPrice}",
                                              style: TextStyle(
                                                  fontSize:
                                                      SizeConfig.screenHeight! /
                                                          37.95,
                                                  color: kMainColor))
                                        ],
                                      ),
                                    )),
                                Positioned(
                                    top: SizeConfig.screenHeight! / 68.3,
                                    right: SizeConfig.screenWidth! / 41.1,
                                    child: GestureDetector(
                                      onTap: () => print(
                                          'Tab favorite recomme: ${food.foodName}'),
                                      child: const Icon(
                                        Icons.favorite,
                                        color: kMainBgColor,
                                        size: 40,
                                      ),
                                    )),
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Container(
                                    height: SizeConfig.screenHeight! / 13.66,
                                    width: SizeConfig.screenWidth! / 8.22,
                                    decoration: const BoxDecoration(
                                        color: kMainColor,
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(20.0),
                                          topLeft: Radius.circular(20.0),
                                        )),
                                    child: const Icon(
                                      Icons.shopping_cart_rounded,
                                      color: kMainBgColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  });
            });
      }),
    );
  }
}
