import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/src/core/widgets/loading_widget.dart';
import 'package:food_delivery/src/features/cart/data/models/cart_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../home/data/models/food.dart';
import '../../models/order_item.dart';

part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(const CartState.initial()) {
    on<_CartEventAddItem>((event, emit) {
      state.when(initial: () {
        final CartItem cartItem =
            CartItem(food: event.food, quantity: event.quantity);
        final amount = double.parse(event.food.foodPrice) * event.quantity;
        final List<CartItem> items = [cartItem];
        final orderItem = OrderItem(items: items, amount: amount);
        emit(CartState.data(orderItem: orderItem));
      }, data: (order) {
        final isInCart =
            order.items.any((element) => element.food != event.food);
        if (isInCart) {
          final List<CartItem> items = [
            ...order.items,
            CartItem(food: event.food, quantity: event.quantity)
          ];
          final amount = order.amount +
              double.parse(event.food.foodPrice) * event.quantity;
          final newOrderItem = order.copyWith(items: items, amount: amount);
          emit(CartState.data(orderItem: newOrderItem));
        }
      });
    });
    on<_CartEventDeleteItem>((event, emit) {
      state.maybeWhen(
          orElse: () {},
          data: (order) {
            if (order.items.length == 1) {
              emit(const CartState.initial());
            } else {
              final deletedItem = order.items
                  .firstWhere((element) => element.food == event.food);
              final amount = order.amount -
                  double.parse(deletedItem.food.foodPrice) *
                      deletedItem.quantity;
              final List<CartItem> items = [
                ...order.items.where((element) => element != deletedItem),
              ];
              final newOrderItem = order.copyWith(items: items, amount: amount);
              emit(CartState.data(orderItem: newOrderItem));
            }
          });
    });

    on<_CartEventAddOrder>((event, emit) {});
  }
}

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.addItem(
      {required Food food, @Default(1) int quantity}) = _CartEventAddItem;
  const factory CartEvent.deleteItem({required Food food}) =
      _CartEventDeleteItem;
  const factory CartEvent.incrementItem({required Food food}) =
      _CartEventIncrementItem;
  const factory CartEvent.decrementItem({required Food food}) =
      _CartEventDecrementItem;
  const factory CartEvent.addOrder() = _CartEventAddOrder;
}

@freezed
class CartState with _$CartState {
  const factory CartState.initial() = _CartStateInitial;
  const factory CartState.data({required OrderItem orderItem}) = CartStateData;
}
