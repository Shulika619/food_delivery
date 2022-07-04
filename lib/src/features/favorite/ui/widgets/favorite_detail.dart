import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/src/core/const.dart';
import 'package:food_delivery/src/features/cart/data/bloc/cart/cart_bloc.dart';
import 'package:food_delivery/src/features/profile/cubit/user_cubit.dart';

import '../../../../core/size_config.dart';
import '../../../home/data/models/food.dart';

class FavoriteDetail extends StatefulWidget {
  final Food food;

  const FavoriteDetail({Key? key, required this.food}) : super(key: key);

  @override
  State<FavoriteDetail> createState() => _FavoriteDetailState();
}

class _FavoriteDetailState extends State<FavoriteDetail> {
  @override
  Widget build(BuildContext context) {
    final userCubit = context.watch<UserProfileCubit>();
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: SizeConfig.screenHeight! / 6.2,
                  width: SizeConfig.screenWidth! / 2.055,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          CachedNetworkImageProvider(widget.food.foodImageName),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                  ),
                ),
                Positioned(
                    top: SizeConfig.screenHeight! / 56.92,
                    right: SizeConfig.screenWidth! / 34.25,
                    child: GestureDetector(
                      onTap: () {
                        userCubit.updateUserFavorite(widget.food.foodId);
                      },
                      child: Icon(
                        Icons.favorite,
                        color: userCubit.isFoodFavorite(widget.food.foodId)
                            ? kMainColor
                            : kMainColor,
                        size: 35,
                      ),
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    widget.food.foodName,
                    style: TextStyle(
                        color: kTxtListColor,
                        fontSize: SizeConfig.screenHeight! / 38.15,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    widget.food.foodCategory,
                    style: TextStyle(
                        color: kTxtListCategoryColor,
                        fontSize: SizeConfig.screenHeight! / 42.69,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 8),
              child: Text(
                "\$${widget.food.foodPrice}",
                style: TextStyle(
                    color: kMainColor,
                    fontSize: SizeConfig.screenHeight! / 37.95,
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
              context
                  .read<CartBloc>()
                  .add(CartEvent.addItem(food: widget.food));
            },
            child: Container(
              height: SizeConfig.screenHeight! / 13.66,
              width: SizeConfig.screenWidth! / 8.22,
              decoration: const BoxDecoration(
                color: kMainColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0),
                ),
              ),
              child: const Icon(
                Icons.shopping_cart_rounded,
                color: kMainBgColor,
              ),
            ),
          ),
        )
      ],
    );
  }
}
