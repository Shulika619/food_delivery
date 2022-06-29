import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/src/features/home/bloc/menu_bloc.dart';

import '../../../../core/const.dart';
import '../../../../core/size_config.dart';
import '../../../detail/ui/pages/detail_page.dart';

class RecommedFoods extends StatefulWidget {
  const RecommedFoods({Key? key}) : super(key: key);

  @override
  State<RecommedFoods> createState() => _RecommedFoodsState();
}

class _RecommedFoodsState extends State<RecommedFoods> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MenuBloc, MenuState>(
      builder: (context, state) {
        return state.when(
            initData: (listDiscount, listCategories, listFood) =>
                const SizedBox(),
            data: (listDiscount, listCategories, listFood) {
              return listFood.isEmpty
                  ? const SizedBox()
                  : SizedBox(
                      height: SizeConfig.screenHeight! / 2.58,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: listFood.length,
                        itemBuilder: (context, index) {
                          var food = listFood[index];
                          return Column(
                            children: [
                              GestureDetector(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            DetailPage(food: food))),
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(
                                    SizeConfig.screenWidth! / 34.25,
                                    SizeConfig.screenHeight! / 170.75,
                                    SizeConfig.screenWidth! / 41.1,
                                    SizeConfig.screenHeight! / 170.75,
                                  ),
                                  height: SizeConfig.screenHeight! / 2.73,
                                  width: SizeConfig.screenWidth! / 2.055,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                            offset: const Offset(4, 6),
                                            blurRadius: 4,
                                            color:
                                                Colors.black.withOpacity(0.3))
                                      ]),
                                  child: Stack(
                                    fit: StackFit.expand,
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image:
                                                      CachedNetworkImageProvider(
                                                          food.foodImageName),
                                                  fit: BoxFit.cover),
                                              borderRadius:
                                                  BorderRadius.circular(20))),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.4),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                      Positioned(
                                          left: SizeConfig.screenWidth! / 34.25,
                                          bottom:
                                              SizeConfig.screenHeight! / 45.54,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(food.foodName,
                                                  style: TextStyle(
                                                      fontSize: SizeConfig
                                                              .screenHeight! /
                                                          34.15,
                                                      color: kMainBgColor)),
                                              Text(food.foodCategory,
                                                  style: TextStyle(
                                                      fontSize: SizeConfig
                                                              .screenHeight! /
                                                          48.79,
                                                      color: kMainBgColor)),
                                              Text("\$${food.foodPrice}",
                                                  style: TextStyle(
                                                      fontSize: SizeConfig
                                                              .screenHeight! /
                                                          37.95,
                                                      color: kMainBgColor))
                                            ],
                                          )),
                                      // Positioned(
                                      //     top: SizeConfig.screenHeight! / 68.3,
                                      //     right: SizeConfig.screenWidth! / 41.1,
                                      //     child: GestureDetector(
                                      //       onTap: () => print(
                                      //           'Tab favorite recomme: ${food.foodName}'),
                                      //       child: const Icon(Icons.favorite,
                                      //           color: kMainBgColor),
                                      //     ))
                                    ],
                                  ),
                                ),
                              ),
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
