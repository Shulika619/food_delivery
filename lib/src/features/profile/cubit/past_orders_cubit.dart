import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/src/features/cart/data/models/order_item.dart';
import 'package:food_delivery/src/features/profile/data/repositories/past_orders_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'past_orders_cubit.freezed.dart';

class PastOrdersCubit extends Cubit<PastOrdersState> {
  final pastOrderRepo = PastOrdersRepository();
  PastOrdersCubit() : super(const PastOrdersState.initial());

  Future<void> fetchOrders() async {
    emit(const PastOrdersState.loading());

    final data = await pastOrderRepo.fetchOrders();
    if (data.isEmpty) {
      emit(const PastOrdersState.initial());
    } else {
      emit(PastOrdersState.data(orders: data));
    }
  }
}

@freezed
class PastOrdersState with _$PastOrdersState {
  const factory PastOrdersState.initial() = _PastOrdersStateInitial;
  const factory PastOrdersState.loading() = _PastOrdersStateLoading;
  const factory PastOrdersState.data({required List<OrderItem> orders}) =
      _PastOrdersStateData;
}
