import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/src/features/cart/data/models/order_item.dart';
import 'package:food_delivery/src/features/profile/data/repositories/past_orders_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/errors/flutter_toast_warning.dart';

part 'past_orders_cubit.freezed.dart';

class PastOrdersCubit extends Cubit<PastOrdersState> {
  final PastOrdersRepository repository;
  PastOrdersCubit({required this.repository})
      : super(const PastOrdersState.initial());

  Future<void> fetchOrders() async {
    emit(const PastOrdersState.loading());

    try {
      final data =
          await repository.fetchOrders().timeout(const Duration(seconds: 5));
      if (data.isNotEmpty) {
        emit(PastOrdersState.data(orders: data));
      } else {
        emit(const PastOrdersState.initial());
      }
    } on TimeoutException catch (_) {
      FlutterToastWarning.showToast(
          message:
              'TimeOut Error!!! The server is not responding, check Internet connection!',
          isError: true);
    } catch (e) {
      emit(const PastOrdersState.initial());
      rethrow;
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
