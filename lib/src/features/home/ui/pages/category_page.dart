import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/src/features/home/ui/widgets/food_list.dart';

import '../../bloc/menu_bloc.dart';
import '../../data/models/category.dart';
import '../../data/models/food.dart';

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
              final filterFoodList = listFood
                  .where((element) =>
                      element.foodCategory == widget.category.categoryName)
                  .toList();
              return FoodListWidget(foodList: filterFoodList);
            });
      }),
    );
  }
}
