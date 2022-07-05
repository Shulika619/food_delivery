import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:food_delivery/src/features/cart/data/models/order_item.dart';

class OrderRepository {
  Future<void> addOrder(OrderItem order) async {
    final ref = FirebaseDatabase.instance
        .ref("orders/${FirebaseAuth.instance.currentUser?.uid}");

    final data = <String, dynamic>{
      'amount': order.amount,
      'dateTime': order.dateTime?.toIso8601String(),
      'items': [...order.items.map((e) => e.toJson())]
    };
    await ref.push().set(data);
  }
}
