import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/category.dart';
import '../data/models/food.dart';
import '../data/repositories/menu_repository.dart';

part 'menu_bloc.freezed.dart';

class MenuBloc extends Bloc<MenuEvent, MenuState> {
  final MenuRepository repository;
  MenuBloc({required this.repository})
      : super(const MenuState.initData(
            listDiscount: [], listCategories: [], listFood: [])) {
    on<_MenuEventFetchData>((event, emit) async {
      try {
        final discounts = await repository.fetchDiscount();
        final categories = await repository.fetchCategories();
        final food = await repository.fetchFood();

        emit(MenuState.data(
            listDiscount: discounts,
            listCategories: categories,
            listFood: food));
      } catch (e) {
        emit(const MenuState.initData(
            listDiscount: [], listCategories: [], listFood: []));
        rethrow;
      }
    });
  }
}

@freezed
class MenuEvent with _$MenuEvent {
  const factory MenuEvent.fetchData() = _MenuEventFetchData;
}

@freezed
class MenuState with _$MenuState {
  const factory MenuState.initData(
      {required List<String> listDiscount,
      required List<Category> listCategories,
      required List<Food> listFood}) = _MenuStateInitData;
  const factory MenuState.data(
      {required List<String> listDiscount,
      required List<Category> listCategories,
      required List<Food> listFood}) = _MenuStateData;
}
