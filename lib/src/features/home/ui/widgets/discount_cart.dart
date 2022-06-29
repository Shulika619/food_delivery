import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/src/features/home/bloc/menu_bloc.dart';

import '../../../../core/size_config.dart';

class DiscountCard extends StatefulWidget {
  const DiscountCard({Key? key}) : super(key: key);

  @override
  State<DiscountCard> createState() => _DiscountCardState();
}

class _DiscountCardState extends State<DiscountCard> {
  @override
  Widget build(BuildContext context) {
    final state = context.watch<MenuBloc>().state;
    return state.when(
        initData: (items, categories, food) => const SizedBox(),
        data: (discounts, categories, food) => discounts.isEmpty
            ? const SizedBox()
            : Padding(
                padding: EdgeInsets.only(
                    top: SizeConfig.screenHeight! / 34.15,
                    bottom: SizeConfig.screenHeight! / 68.3),
                child: SizedBox(
                  height: SizeConfig.screenHeight! / 3.415,
                  width: SizeConfig.screenWidth,
                  child: CarouselSlider(
                      options: CarouselOptions(
                        enableInfiniteScroll: true,
                        enlargeCenterPage: true,
                        autoPlay: true,
                      ),
                      items: discounts
                          .map((item) => ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: [
                                    CachedNetworkImage(
                                      imageUrl: item,
                                      fit: BoxFit.cover,
                                      placeholder: (context, url) =>
                                          const CircularProgressIndicator(),
                                    ),
                                  ],
                                ),
                              ))
                          .toList()),
                ),
              ));
  }
}
