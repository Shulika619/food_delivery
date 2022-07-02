import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/src/core/const.dart';
import 'package:food_delivery/src/features/home/data/models/food.dart';

import '../../../../core/size_config.dart';
import '../../../home/bloc/menu_bloc.dart';
import '../../../home/ui/widgets/food_list.dart';

class SearchTextField extends StatefulWidget {
  final String hintText;
  const SearchTextField({Key? key, required this.hintText}) : super(key: key);

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  List<Food> _resultListFood = [];
  String _searchStr = '';

  Timer? searchDebounce;

  @override
  void dispose() {
    super.dispose();
    searchDebounce?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MenuBloc, MenuState>(
      builder: (context, state) {
        return state.when(
          initData: (listDiscount, listCategories, listFood) =>
              const SizedBox(),
          data: (listDiscount, listCategories, listFood) => Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(
                    SizeConfig.screenWidth! / 20.55,
                    0,
                    SizeConfig.screenWidth! / 20.55,
                    SizeConfig.screenHeight! / 85.38),
                child: Container(
                  decoration: BoxDecoration(
                      color: kMainBgColor,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20.0)),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 3),
                          blurRadius: 4,
                          color: Colors.black.withOpacity(0.2),
                        )
                      ]),
                  child: TextField(
                    style: const TextStyle(color: kMainColor),
                    cursorColor: kMainColor,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search,
                        color: kTxtListCategoryColor,
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        borderSide:
                            BorderSide(width: 1, color: Colors.transparent),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      hintText: widget.hintText,
                      hintStyle: const TextStyle(color: kTxtListCategoryColor),
                    ),
                    onChanged: (value) {
                      _searchStr = value;
                      searchDebounce?.cancel();
                      searchDebounce =
                          Timer(const Duration(milliseconds: 1000), () {
                        setState(() {
                          if (value == "") {
                            _resultListFood = [];
                          } else {
                            _resultListFood = listFood
                                .where((element) => element.foodName
                                    .toLowerCase()
                                    .contains(_searchStr.toLowerCase()))
                                .toList();
                          }
                        });
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    SizeConfig.screenWidth! / 18.68,
                    SizeConfig.screenHeight! / 68.3,
                    SizeConfig.screenWidth! / 18.68,
                    SizeConfig.screenHeight! / 85.38),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recent Search",
                      style: TextStyle(
                          fontSize: SizeConfig.screenHeight! / 37.95,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: _searchStr != ""
                    ? FoodListWidget(
                        foodList: _resultListFood,
                      )
                    // ? ResultItems(resultFoodList: _resultListFood)
                    : const Center(
                        child: Icon(Icons.search, size: 85, color: kMainColor)),
              )
            ],
          ),
        );
      },
    );
  }
}
