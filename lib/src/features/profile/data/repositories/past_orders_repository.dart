import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:food_delivery/src/features/cart/data/models/cart_item.dart';

import '../../../cart/data/models/order_item.dart';

class PastOrdersRepository {
  Future<List<OrderItem>> fetchOrders() async {
    final List<OrderItem> ordersList = [];
    final response = await FirebaseDatabase.instance
        .ref("orders/${FirebaseAuth.instance.currentUser?.uid}")
        .orderByValue()
        .get();
    if (response.value != null) {
      final extractData =
          jsonDecode(jsonEncode(response.value)) as Map<String, dynamic>;
      final tempOrders = extractData.values;

      for (var order in tempOrders) {
        final amount = order['amount'] as int;
        final dateTime = order['dateTime'] as String;
        final list = order['items'] as List<dynamic>;
        final items = list.map((e) => CartItem.fromJson(e)).toList();
        final orderItem = OrderItem(
            items: items,
            amount: amount.toDouble(),
            dateTime: DateTime.parse(dateTime));
        ordersList.add(orderItem);
      }
    }

    return ordersList;
  }
}
