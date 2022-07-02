import 'category.dart';
import 'food.dart';

Future<List<Food>> bringTheFoods() async {
  var foodList = <Food>[];

  var f1 = const Food(
      foodId: "1",
      foodName: "Chicken Curry Pasta",
      foodImageName: "assets/food/ChickenCurryPasta.jpg",
      foodCategory: "Chicken",
      foodPrice: "22");
  var f2 = const Food(
      foodId: "2",
      foodName: "Explosion Burger",
      foodImageName: "assets/food/ExplosionBurger.jpg",
      foodCategory: "Fast Food",
      foodPrice: "15");
  var f3 = const Food(
      foodId: "3",
      foodName: "Grilled Chicken",
      foodImageName: "assets/food/GrilledChicken.jpg",
      foodCategory: "Chicken",
      foodPrice: "30");
  var f4 = const Food(
      foodId: "4",
      foodName: "Grilled Fish",
      foodImageName: "assets/food/GrilledFish.jpg",
      foodCategory: "Fish",
      foodPrice: "27");
  var f5 = const Food(
      foodId: "5",
      foodName: "Heavenly Pizza",
      foodImageName: "assets/food/HeavenlyPizza.jpg",
      foodCategory: "Fast Food",
      foodPrice: "24");
  var f6 = const Food(
      foodId: "6",
      foodName: "Mandarin Pancake",
      foodImageName: "assets/food/MandarinPancake.jpg",
      foodCategory: "Bakery",
      foodPrice: "19");
  var f7 = const Food(
      foodId: "7",
      foodName: "Organic Mandarin",
      foodImageName: "assets/food/OrganicMandarin.jpg",
      foodCategory: "Fruit",
      foodPrice: "15");
  var f8 = const Food(
      foodId: "8",
      foodName: "Organic Orange",
      foodImageName: "assets/food/OrganicOrange.jpg",
      foodCategory: "Fruit",
      foodPrice: "12");
  var f9 = const Food(
      foodId: "9",
      foodName: "Raspberries Cake",
      foodImageName: "assets/food/RaspberriesCake.jpg",
      foodCategory: "Bakery",
      foodPrice: "28");

  foodList.add(f1);
  foodList.add(f2);
  foodList.add(f3);
  foodList.add(f4);
  foodList.add(f5);
  foodList.add(f6);
  foodList.add(f7);
  foodList.add(f8);
  foodList.add(f9);

  return foodList;
}

List<Category> bringTheCategory() {
  var categoryList = <Category>[];

  var c1 = Category(
      categoryId: "1",
      categoryName: "Chicken",
      categoryImage:
          "https://firebasestorage.googleapis.com/v0/b/food-delivery-41e0e.appspot.com/o/shop%2Fcategory%2Fchicken.png?alt=media&token=10b5cf65-c1fe-440f-9fe6-88d74b5ade7b");
  var c2 = Category(
      categoryId: "2",
      categoryName: "Bakery",
      categoryImage:
          "https://firebasestorage.googleapis.com/v0/b/food-delivery-41e0e.appspot.com/o/shop%2Fcategory%2Fbakery.png?alt=media&token=8745d70a-5457-478a-b1ef-bbefc54b906d");
  var c3 = Category(
      categoryId: "3",
      categoryName: "Fast Food",
      categoryImage:
          "https://firebasestorage.googleapis.com/v0/b/food-delivery-41e0e.appspot.com/o/shop%2Fcategory%2Ffastfood.png?alt=media&token=806576ee-7e6d-4868-b9ad-293833be9773");
  var c4 = Category(
      categoryId: "4",
      categoryName: "Fish",
      categoryImage:
          "https://firebasestorage.googleapis.com/v0/b/food-delivery-41e0e.appspot.com/o/shop%2Fcategory%2Ffish.png?alt=media&token=564e4c01-51bb-483d-afcc-eedca0d9cb93");
  var c5 = Category(
      categoryId: "5",
      categoryName: "Fruit",
      categoryImage:
          "https://firebasestorage.googleapis.com/v0/b/food-delivery-41e0e.appspot.com/o/shop%2Fcategory%2Ffruit.png?alt=media&token=c3024819-7ce2-4357-8bea-6eeb867bc198");
  var c6 = Category(
      categoryId: "6",
      categoryName: "Soup",
      categoryImage:
          "https://firebasestorage.googleapis.com/v0/b/food-delivery-41e0e.appspot.com/o/shop%2Fcategory%2Fsoup.png?alt=media&token=7869c148-8073-4d8d-bc89-ba4c6f42d77a");
  var c7 = Category(
      categoryId: "7",
      categoryName: "Vegetable",
      categoryImage:
          "https://firebasestorage.googleapis.com/v0/b/food-delivery-41e0e.appspot.com/o/shop%2Fcategory%2Fvegetable.png?alt=media&token=36938d1e-07ca-4dea-915a-47558fe4fc6c");

  categoryList.add(c1);
  categoryList.add(c2);
  categoryList.add(c3);
  categoryList.add(c4);
  categoryList.add(c5);
  categoryList.add(c6);
  categoryList.add(c7);

  return categoryList;
}
