import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:food_delivery/src/features/home/data/models/category.dart';

import '../models/food.dart';

class MenuRepository {
  /// Discount
  Future<List<String>> fetchDiscount() async {
    final listResult =
        await FirebaseStorage.instance.ref().child("/shop/discount/").listAll();
    List<String> listUrl = [];

    for (var item in listResult.items) {
      listUrl.add(await item.getDownloadURL());
    }
    return listUrl;
  }

  /// Categories
  Future<List<Category>> fetchCategories() async {
    ///! Firebase return -> _InternalLinkedHashMap<Object?, Object?>
    ///! #1 first variant
    // final List<Category> categoryList = [];
    // final extractData = response.value as List<dynamic>;
    // for (var element in extractData) {
    //   categoryList.add(Category(
    //       categoryId: element['categoryId'],
    //       categoryName: element['categoryName'],
    //       categoryImage: element['categoryImage']));
    // }

    ///! #2 second variant
    final response = await FirebaseDatabase.instance.ref("/categories").get();
    final extractData = jsonDecode(jsonEncode(response.value)) as List<dynamic>;
    final categoryList = extractData.map((e) => Category.fromJson(e)).toList();
    return categoryList;
  }

  Future<void> postCategories(List<Category> categoryList) async {
    final data = categoryList.map((e) => e.toJson()).toList();
    await FirebaseDatabase.instance.ref("/categories").set(data);
  }

  /// Food
  Future<List<Food>> fetchFood() async {
    final response = await FirebaseDatabase.instance.ref("/food").get();
    final extractData = jsonDecode(jsonEncode(response.value)) as List<dynamic>;
    final foodList = extractData.map((e) => Food.fromJson(e)).toList();
    return foodList;
  }

  Future<void> postFood(List<Food> foodList) async {
    final data = foodList.map((e) => e.toJson()).toList();
    await FirebaseDatabase.instance.ref("/food").set(data);
  }
}
