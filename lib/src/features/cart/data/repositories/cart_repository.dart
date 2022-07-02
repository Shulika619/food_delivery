import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:food_delivery/src/features/cart/data/models/order_item.dart';

Future<List<OrderItem>> fetchOrders() async {
  final List<OrderItem> resul = [];
  final ref = FirebaseDatabase.instance
      .ref("orders/${FirebaseAuth.instance.currentUser?.uid}");
  final data = await ref.get();
  //
  //
  return resul;
}

Future<void> addOrder(OrderItem order) async {
  final ref = FirebaseDatabase.instance
      .ref("orders/${FirebaseAuth.instance.currentUser?.uid}");
  //
  // await ref.push();
}
