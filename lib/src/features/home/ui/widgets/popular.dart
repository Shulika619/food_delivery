import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/const.dart';
import '../../../../core/size_config.dart';
import '../../../cart/bloc/cart/cart_bloc.dart';
import '../../../detail/ui/pages/detail_page.dart';
import '../../bloc/menu_bloc.dart';

class PopularFoods extends StatefulWidget {
  const PopularFoods({Key? key}) : super(key: key);

  @override
  State<PopularFoods> createState() => _PopularFoodsState();
}

class _PopularFoodsState extends State<PopularFoods> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MenuBloc, MenuState>(
      builder: (context, state) {
        return state.when(
            initData: (listDiscount, listCategories, listFood) =>
                const SizedBox(),
            data: (listDiscount, listCategories, listFood) => listFood.isEmpty
                ? const SizedBox()
                : SizedBox(
                    height: SizeConfig.screenHeight! / 2.28,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: listFood.length,
                      itemBuilder: (context, index) {
                        var food = listFood[index];
                        return GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DetailPage(food: food))),
                          child: Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    SizeConfig.screenWidth! / 34.25,
                                    SizeConfig.screenHeight! / 113.84,
                                    SizeConfig.screenWidth! / 34.25,
                                    SizeConfig.screenHeight! / 22.77),
                                height: SizeConfig.screenHeight! / 3.105,
                                width: SizeConfig.screenWidth! / 2.74,
                                decoration: BoxDecoration(
                                    color: kMainBgColor,
                                    borderRadius: BorderRadius.circular(30.0),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: const Offset(0, 3),
                                        blurRadius: 6,
                                        color: Colors.black.withOpacity(0.3),
                                      )
                                    ]),
                                child: Stack(
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height:
                                              SizeConfig.screenHeight! / 6.83,
                                          width: SizeConfig.screenWidth! / 2.74,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: CachedNetworkImageProvider(
                                                  food.foodImageName),
                                              fit: BoxFit.cover,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(30.0),
                                                    topRight:
                                                        Radius.circular(30.0)),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(food.foodName,
                                                  style: TextStyle(
                                                      color: kTxtListColor,
                                                      fontSize: SizeConfig
                                                              .screenHeight! /
                                                          34.15,
                                                      fontWeight:
                                                          FontWeight.w700)),
                                              Text(
                                                food.foodCategory,
                                                style: TextStyle(
                                                    color:
                                                        kTxtListCategoryColor,
                                                    fontSize: SizeConfig
                                                            .screenHeight! /
                                                        42.69,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        Container(
                                          alignment: Alignment.bottomLeft,
                                          padding: const EdgeInsets.only(
                                              left: 15, bottom: 10),
                                          child: Text(
                                            "\$${food.foodPrice}",
                                            style: TextStyle(
                                                color: kMainColor,
                                                fontSize:
                                                    SizeConfig.screenHeight! /
                                                        37.95,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child: GestureDetector(
                                        onTap: () {
                                          context.read<CartBloc>().add(
                                              CartEvent.addItem(food: food));
                                        },
                                        child: Container(
                                          height:
                                              SizeConfig.screenHeight! / 13.66,
                                          width: SizeConfig.screenWidth! / 8.22,
                                          decoration: const BoxDecoration(
                                              color: kMainColor,
                                              borderRadius: BorderRadius.only(
                                                bottomRight:
                                                    Radius.circular(30.0),
                                                topLeft: Radius.circular(30.0),
                                              )),
                                          child: const Icon(
                                            Icons.shopping_cart_rounded,
                                            color: kMainBgColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ));
      },
    );
  }
}
