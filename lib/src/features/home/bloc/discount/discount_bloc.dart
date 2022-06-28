import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/src/features/home/data/repositories/discount_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'discount_bloc.freezed.dart';

class DiscountBloc extends Bloc<DiscountEvent, DiscountState> {
  DiscountBloc() : super(const DiscountState.initData(listDiscount: [])) {
    final discountRepository = DiscountRepository();

    on<_DiscountEventfetchData>((event, emit) async {
      try {
        final result = await discountRepository.fetchDiscount();
        if (result.isNotEmpty) {
          emit(DiscountState.data(listDiscount: result));
        } else {
          emit(const DiscountState.initData(listDiscount: []));
        }
      } catch (e) {
        emit(const DiscountState.initData(listDiscount: []));
      }
    });
  }
}

@freezed
class DiscountEvent with _$DiscountEvent {
  const factory DiscountEvent.fetchData() = _DiscountEventfetchData;
}

@freezed
class DiscountState with _$DiscountState {
  const factory DiscountState.initData({required List<String> listDiscount}) =
      _DiscountStateLoading;
  const factory DiscountState.data({required List<String> listDiscount}) =
      _DiscountStateComplete;
}
