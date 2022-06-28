import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:food_delivery/src/features/home/data/models/category.dart';

class CategoriesRepository {
  Future<List<Category>> fetchData() async {
    final List<Category> categoryList = [];

    try {
      final response = await FirebaseDatabase.instance.ref("/categories").get();
      final extractData = response.value as List<dynamic>;

      for (var element in extractData) {
        categoryList.add(Category(
            categoryId: element['categoryId'],
            categoryName: element['categoryName'],
            categoryImage: element['categoryImage']));
      }
    } catch (e) {}
    return categoryList;
  }

  Future<void> postData(List<Category> categoryList) async {
    try {
      final data = categoryList.map((e) => e.toJson()).toList();
      await FirebaseDatabase.instance.ref("/categories").set(data);
    } catch (e) {}
  }
}
