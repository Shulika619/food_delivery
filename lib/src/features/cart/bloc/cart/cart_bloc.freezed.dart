// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Food food, int quantity) addItem,
    required TResult Function(Food food) deleteItem,
    required TResult Function(Food food) incrementItem,
    required TResult Function(Food food) decrementItem,
    required TResult Function() addOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Food food, int quantity)? addItem,
    TResult Function(Food food)? deleteItem,
    TResult Function(Food food)? incrementItem,
    TResult Function(Food food)? decrementItem,
    TResult Function()? addOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Food food, int quantity)? addItem,
    TResult Function(Food food)? deleteItem,
    TResult Function(Food food)? incrementItem,
    TResult Function(Food food)? decrementItem,
    TResult Function()? addOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartEventAddItem value) addItem,
    required TResult Function(_CartEventDeleteItem value) deleteItem,
    required TResult Function(_CartEventIncrementItem value) incrementItem,
    required TResult Function(_CartEventDecrementItem value) decrementItem,
    required TResult Function(_CartEventAddOrder value) addOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CartEventAddItem value)? addItem,
    TResult Function(_CartEventDeleteItem value)? deleteItem,
    TResult Function(_CartEventIncrementItem value)? incrementItem,
    TResult Function(_CartEventDecrementItem value)? decrementItem,
    TResult Function(_CartEventAddOrder value)? addOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartEventAddItem value)? addItem,
    TResult Function(_CartEventDeleteItem value)? deleteItem,
    TResult Function(_CartEventIncrementItem value)? incrementItem,
    TResult Function(_CartEventDecrementItem value)? decrementItem,
    TResult Function(_CartEventAddOrder value)? addOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res> implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  final CartEvent _value;
  // ignore: unused_field
  final $Res Function(CartEvent) _then;
}

/// @nodoc
abstract class _$$_CartEventAddItemCopyWith<$Res> {
  factory _$$_CartEventAddItemCopyWith(
          _$_CartEventAddItem value, $Res Function(_$_CartEventAddItem) then) =
      __$$_CartEventAddItemCopyWithImpl<$Res>;
  $Res call({Food food, int quantity});

  $FoodCopyWith<$Res> get food;
}

/// @nodoc
class __$$_CartEventAddItemCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res>
    implements _$$_CartEventAddItemCopyWith<$Res> {
  __$$_CartEventAddItemCopyWithImpl(
      _$_CartEventAddItem _value, $Res Function(_$_CartEventAddItem) _then)
      : super(_value, (v) => _then(v as _$_CartEventAddItem));

  @override
  _$_CartEventAddItem get _value => super._value as _$_CartEventAddItem;

  @override
  $Res call({
    Object? food = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_$_CartEventAddItem(
      food: food == freezed
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as Food,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $FoodCopyWith<$Res> get food {
    return $FoodCopyWith<$Res>(_value.food, (value) {
      return _then(_value.copyWith(food: value));
    });
  }
}

/// @nodoc

class _$_CartEventAddItem implements _CartEventAddItem {
  const _$_CartEventAddItem({required this.food, this.quantity = 1});

  @override
  final Food food;
  @override
  @JsonKey()
  final int quantity;

  @override
  String toString() {
    return 'CartEvent.addItem(food: $food, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartEventAddItem &&
            const DeepCollectionEquality().equals(other.food, food) &&
            const DeepCollectionEquality().equals(other.quantity, quantity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(food),
      const DeepCollectionEquality().hash(quantity));

  @JsonKey(ignore: true)
  @override
  _$$_CartEventAddItemCopyWith<_$_CartEventAddItem> get copyWith =>
      __$$_CartEventAddItemCopyWithImpl<_$_CartEventAddItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Food food, int quantity) addItem,
    required TResult Function(Food food) deleteItem,
    required TResult Function(Food food) incrementItem,
    required TResult Function(Food food) decrementItem,
    required TResult Function() addOrder,
  }) {
    return addItem(food, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Food food, int quantity)? addItem,
    TResult Function(Food food)? deleteItem,
    TResult Function(Food food)? incrementItem,
    TResult Function(Food food)? decrementItem,
    TResult Function()? addOrder,
  }) {
    return addItem?.call(food, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Food food, int quantity)? addItem,
    TResult Function(Food food)? deleteItem,
    TResult Function(Food food)? incrementItem,
    TResult Function(Food food)? decrementItem,
    TResult Function()? addOrder,
    required TResult orElse(),
  }) {
    if (addItem != null) {
      return addItem(food, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartEventAddItem value) addItem,
    required TResult Function(_CartEventDeleteItem value) deleteItem,
    required TResult Function(_CartEventIncrementItem value) incrementItem,
    required TResult Function(_CartEventDecrementItem value) decrementItem,
    required TResult Function(_CartEventAddOrder value) addOrder,
  }) {
    return addItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CartEventAddItem value)? addItem,
    TResult Function(_CartEventDeleteItem value)? deleteItem,
    TResult Function(_CartEventIncrementItem value)? incrementItem,
    TResult Function(_CartEventDecrementItem value)? decrementItem,
    TResult Function(_CartEventAddOrder value)? addOrder,
  }) {
    return addItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartEventAddItem value)? addItem,
    TResult Function(_CartEventDeleteItem value)? deleteItem,
    TResult Function(_CartEventIncrementItem value)? incrementItem,
    TResult Function(_CartEventDecrementItem value)? decrementItem,
    TResult Function(_CartEventAddOrder value)? addOrder,
    required TResult orElse(),
  }) {
    if (addItem != null) {
      return addItem(this);
    }
    return orElse();
  }
}

abstract class _CartEventAddItem implements CartEvent {
  const factory _CartEventAddItem(
      {required final Food food, final int quantity}) = _$_CartEventAddItem;

  Food get food => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_CartEventAddItemCopyWith<_$_CartEventAddItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CartEventDeleteItemCopyWith<$Res> {
  factory _$$_CartEventDeleteItemCopyWith(_$_CartEventDeleteItem value,
          $Res Function(_$_CartEventDeleteItem) then) =
      __$$_CartEventDeleteItemCopyWithImpl<$Res>;
  $Res call({Food food});

  $FoodCopyWith<$Res> get food;
}

/// @nodoc
class __$$_CartEventDeleteItemCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res>
    implements _$$_CartEventDeleteItemCopyWith<$Res> {
  __$$_CartEventDeleteItemCopyWithImpl(_$_CartEventDeleteItem _value,
      $Res Function(_$_CartEventDeleteItem) _then)
      : super(_value, (v) => _then(v as _$_CartEventDeleteItem));

  @override
  _$_CartEventDeleteItem get _value => super._value as _$_CartEventDeleteItem;

  @override
  $Res call({
    Object? food = freezed,
  }) {
    return _then(_$_CartEventDeleteItem(
      food: food == freezed
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as Food,
    ));
  }

  @override
  $FoodCopyWith<$Res> get food {
    return $FoodCopyWith<$Res>(_value.food, (value) {
      return _then(_value.copyWith(food: value));
    });
  }
}

/// @nodoc

class _$_CartEventDeleteItem implements _CartEventDeleteItem {
  const _$_CartEventDeleteItem({required this.food});

  @override
  final Food food;

  @override
  String toString() {
    return 'CartEvent.deleteItem(food: $food)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartEventDeleteItem &&
            const DeepCollectionEquality().equals(other.food, food));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(food));

  @JsonKey(ignore: true)
  @override
  _$$_CartEventDeleteItemCopyWith<_$_CartEventDeleteItem> get copyWith =>
      __$$_CartEventDeleteItemCopyWithImpl<_$_CartEventDeleteItem>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Food food, int quantity) addItem,
    required TResult Function(Food food) deleteItem,
    required TResult Function(Food food) incrementItem,
    required TResult Function(Food food) decrementItem,
    required TResult Function() addOrder,
  }) {
    return deleteItem(food);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Food food, int quantity)? addItem,
    TResult Function(Food food)? deleteItem,
    TResult Function(Food food)? incrementItem,
    TResult Function(Food food)? decrementItem,
    TResult Function()? addOrder,
  }) {
    return deleteItem?.call(food);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Food food, int quantity)? addItem,
    TResult Function(Food food)? deleteItem,
    TResult Function(Food food)? incrementItem,
    TResult Function(Food food)? decrementItem,
    TResult Function()? addOrder,
    required TResult orElse(),
  }) {
    if (deleteItem != null) {
      return deleteItem(food);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartEventAddItem value) addItem,
    required TResult Function(_CartEventDeleteItem value) deleteItem,
    required TResult Function(_CartEventIncrementItem value) incrementItem,
    required TResult Function(_CartEventDecrementItem value) decrementItem,
    required TResult Function(_CartEventAddOrder value) addOrder,
  }) {
    return deleteItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CartEventAddItem value)? addItem,
    TResult Function(_CartEventDeleteItem value)? deleteItem,
    TResult Function(_CartEventIncrementItem value)? incrementItem,
    TResult Function(_CartEventDecrementItem value)? decrementItem,
    TResult Function(_CartEventAddOrder value)? addOrder,
  }) {
    return deleteItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartEventAddItem value)? addItem,
    TResult Function(_CartEventDeleteItem value)? deleteItem,
    TResult Function(_CartEventIncrementItem value)? incrementItem,
    TResult Function(_CartEventDecrementItem value)? decrementItem,
    TResult Function(_CartEventAddOrder value)? addOrder,
    required TResult orElse(),
  }) {
    if (deleteItem != null) {
      return deleteItem(this);
    }
    return orElse();
  }
}

abstract class _CartEventDeleteItem implements CartEvent {
  const factory _CartEventDeleteItem({required final Food food}) =
      _$_CartEventDeleteItem;

  Food get food => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_CartEventDeleteItemCopyWith<_$_CartEventDeleteItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CartEventIncrementItemCopyWith<$Res> {
  factory _$$_CartEventIncrementItemCopyWith(_$_CartEventIncrementItem value,
          $Res Function(_$_CartEventIncrementItem) then) =
      __$$_CartEventIncrementItemCopyWithImpl<$Res>;
  $Res call({Food food});

  $FoodCopyWith<$Res> get food;
}

/// @nodoc
class __$$_CartEventIncrementItemCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res>
    implements _$$_CartEventIncrementItemCopyWith<$Res> {
  __$$_CartEventIncrementItemCopyWithImpl(_$_CartEventIncrementItem _value,
      $Res Function(_$_CartEventIncrementItem) _then)
      : super(_value, (v) => _then(v as _$_CartEventIncrementItem));

  @override
  _$_CartEventIncrementItem get _value =>
      super._value as _$_CartEventIncrementItem;

  @override
  $Res call({
    Object? food = freezed,
  }) {
    return _then(_$_CartEventIncrementItem(
      food: food == freezed
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as Food,
    ));
  }

  @override
  $FoodCopyWith<$Res> get food {
    return $FoodCopyWith<$Res>(_value.food, (value) {
      return _then(_value.copyWith(food: value));
    });
  }
}

/// @nodoc

class _$_CartEventIncrementItem implements _CartEventIncrementItem {
  const _$_CartEventIncrementItem({required this.food});

  @override
  final Food food;

  @override
  String toString() {
    return 'CartEvent.incrementItem(food: $food)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartEventIncrementItem &&
            const DeepCollectionEquality().equals(other.food, food));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(food));

  @JsonKey(ignore: true)
  @override
  _$$_CartEventIncrementItemCopyWith<_$_CartEventIncrementItem> get copyWith =>
      __$$_CartEventIncrementItemCopyWithImpl<_$_CartEventIncrementItem>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Food food, int quantity) addItem,
    required TResult Function(Food food) deleteItem,
    required TResult Function(Food food) incrementItem,
    required TResult Function(Food food) decrementItem,
    required TResult Function() addOrder,
  }) {
    return incrementItem(food);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Food food, int quantity)? addItem,
    TResult Function(Food food)? deleteItem,
    TResult Function(Food food)? incrementItem,
    TResult Function(Food food)? decrementItem,
    TResult Function()? addOrder,
  }) {
    return incrementItem?.call(food);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Food food, int quantity)? addItem,
    TResult Function(Food food)? deleteItem,
    TResult Function(Food food)? incrementItem,
    TResult Function(Food food)? decrementItem,
    TResult Function()? addOrder,
    required TResult orElse(),
  }) {
    if (incrementItem != null) {
      return incrementItem(food);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartEventAddItem value) addItem,
    required TResult Function(_CartEventDeleteItem value) deleteItem,
    required TResult Function(_CartEventIncrementItem value) incrementItem,
    required TResult Function(_CartEventDecrementItem value) decrementItem,
    required TResult Function(_CartEventAddOrder value) addOrder,
  }) {
    return incrementItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CartEventAddItem value)? addItem,
    TResult Function(_CartEventDeleteItem value)? deleteItem,
    TResult Function(_CartEventIncrementItem value)? incrementItem,
    TResult Function(_CartEventDecrementItem value)? decrementItem,
    TResult Function(_CartEventAddOrder value)? addOrder,
  }) {
    return incrementItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartEventAddItem value)? addItem,
    TResult Function(_CartEventDeleteItem value)? deleteItem,
    TResult Function(_CartEventIncrementItem value)? incrementItem,
    TResult Function(_CartEventDecrementItem value)? decrementItem,
    TResult Function(_CartEventAddOrder value)? addOrder,
    required TResult orElse(),
  }) {
    if (incrementItem != null) {
      return incrementItem(this);
    }
    return orElse();
  }
}

abstract class _CartEventIncrementItem implements CartEvent {
  const factory _CartEventIncrementItem({required final Food food}) =
      _$_CartEventIncrementItem;

  Food get food => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_CartEventIncrementItemCopyWith<_$_CartEventIncrementItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CartEventDecrementItemCopyWith<$Res> {
  factory _$$_CartEventDecrementItemCopyWith(_$_CartEventDecrementItem value,
          $Res Function(_$_CartEventDecrementItem) then) =
      __$$_CartEventDecrementItemCopyWithImpl<$Res>;
  $Res call({Food food});

  $FoodCopyWith<$Res> get food;
}

/// @nodoc
class __$$_CartEventDecrementItemCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res>
    implements _$$_CartEventDecrementItemCopyWith<$Res> {
  __$$_CartEventDecrementItemCopyWithImpl(_$_CartEventDecrementItem _value,
      $Res Function(_$_CartEventDecrementItem) _then)
      : super(_value, (v) => _then(v as _$_CartEventDecrementItem));

  @override
  _$_CartEventDecrementItem get _value =>
      super._value as _$_CartEventDecrementItem;

  @override
  $Res call({
    Object? food = freezed,
  }) {
    return _then(_$_CartEventDecrementItem(
      food: food == freezed
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as Food,
    ));
  }

  @override
  $FoodCopyWith<$Res> get food {
    return $FoodCopyWith<$Res>(_value.food, (value) {
      return _then(_value.copyWith(food: value));
    });
  }
}

/// @nodoc

class _$_CartEventDecrementItem implements _CartEventDecrementItem {
  const _$_CartEventDecrementItem({required this.food});

  @override
  final Food food;

  @override
  String toString() {
    return 'CartEvent.decrementItem(food: $food)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartEventDecrementItem &&
            const DeepCollectionEquality().equals(other.food, food));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(food));

  @JsonKey(ignore: true)
  @override
  _$$_CartEventDecrementItemCopyWith<_$_CartEventDecrementItem> get copyWith =>
      __$$_CartEventDecrementItemCopyWithImpl<_$_CartEventDecrementItem>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Food food, int quantity) addItem,
    required TResult Function(Food food) deleteItem,
    required TResult Function(Food food) incrementItem,
    required TResult Function(Food food) decrementItem,
    required TResult Function() addOrder,
  }) {
    return decrementItem(food);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Food food, int quantity)? addItem,
    TResult Function(Food food)? deleteItem,
    TResult Function(Food food)? incrementItem,
    TResult Function(Food food)? decrementItem,
    TResult Function()? addOrder,
  }) {
    return decrementItem?.call(food);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Food food, int quantity)? addItem,
    TResult Function(Food food)? deleteItem,
    TResult Function(Food food)? incrementItem,
    TResult Function(Food food)? decrementItem,
    TResult Function()? addOrder,
    required TResult orElse(),
  }) {
    if (decrementItem != null) {
      return decrementItem(food);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartEventAddItem value) addItem,
    required TResult Function(_CartEventDeleteItem value) deleteItem,
    required TResult Function(_CartEventIncrementItem value) incrementItem,
    required TResult Function(_CartEventDecrementItem value) decrementItem,
    required TResult Function(_CartEventAddOrder value) addOrder,
  }) {
    return decrementItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CartEventAddItem value)? addItem,
    TResult Function(_CartEventDeleteItem value)? deleteItem,
    TResult Function(_CartEventIncrementItem value)? incrementItem,
    TResult Function(_CartEventDecrementItem value)? decrementItem,
    TResult Function(_CartEventAddOrder value)? addOrder,
  }) {
    return decrementItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartEventAddItem value)? addItem,
    TResult Function(_CartEventDeleteItem value)? deleteItem,
    TResult Function(_CartEventIncrementItem value)? incrementItem,
    TResult Function(_CartEventDecrementItem value)? decrementItem,
    TResult Function(_CartEventAddOrder value)? addOrder,
    required TResult orElse(),
  }) {
    if (decrementItem != null) {
      return decrementItem(this);
    }
    return orElse();
  }
}

abstract class _CartEventDecrementItem implements CartEvent {
  const factory _CartEventDecrementItem({required final Food food}) =
      _$_CartEventDecrementItem;

  Food get food => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_CartEventDecrementItemCopyWith<_$_CartEventDecrementItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CartEventAddOrderCopyWith<$Res> {
  factory _$$_CartEventAddOrderCopyWith(_$_CartEventAddOrder value,
          $Res Function(_$_CartEventAddOrder) then) =
      __$$_CartEventAddOrderCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CartEventAddOrderCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res>
    implements _$$_CartEventAddOrderCopyWith<$Res> {
  __$$_CartEventAddOrderCopyWithImpl(
      _$_CartEventAddOrder _value, $Res Function(_$_CartEventAddOrder) _then)
      : super(_value, (v) => _then(v as _$_CartEventAddOrder));

  @override
  _$_CartEventAddOrder get _value => super._value as _$_CartEventAddOrder;
}

/// @nodoc

class _$_CartEventAddOrder implements _CartEventAddOrder {
  const _$_CartEventAddOrder();

  @override
  String toString() {
    return 'CartEvent.addOrder()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CartEventAddOrder);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Food food, int quantity) addItem,
    required TResult Function(Food food) deleteItem,
    required TResult Function(Food food) incrementItem,
    required TResult Function(Food food) decrementItem,
    required TResult Function() addOrder,
  }) {
    return addOrder();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Food food, int quantity)? addItem,
    TResult Function(Food food)? deleteItem,
    TResult Function(Food food)? incrementItem,
    TResult Function(Food food)? decrementItem,
    TResult Function()? addOrder,
  }) {
    return addOrder?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Food food, int quantity)? addItem,
    TResult Function(Food food)? deleteItem,
    TResult Function(Food food)? incrementItem,
    TResult Function(Food food)? decrementItem,
    TResult Function()? addOrder,
    required TResult orElse(),
  }) {
    if (addOrder != null) {
      return addOrder();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartEventAddItem value) addItem,
    required TResult Function(_CartEventDeleteItem value) deleteItem,
    required TResult Function(_CartEventIncrementItem value) incrementItem,
    required TResult Function(_CartEventDecrementItem value) decrementItem,
    required TResult Function(_CartEventAddOrder value) addOrder,
  }) {
    return addOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CartEventAddItem value)? addItem,
    TResult Function(_CartEventDeleteItem value)? deleteItem,
    TResult Function(_CartEventIncrementItem value)? incrementItem,
    TResult Function(_CartEventDecrementItem value)? decrementItem,
    TResult Function(_CartEventAddOrder value)? addOrder,
  }) {
    return addOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartEventAddItem value)? addItem,
    TResult Function(_CartEventDeleteItem value)? deleteItem,
    TResult Function(_CartEventIncrementItem value)? incrementItem,
    TResult Function(_CartEventDecrementItem value)? decrementItem,
    TResult Function(_CartEventAddOrder value)? addOrder,
    required TResult orElse(),
  }) {
    if (addOrder != null) {
      return addOrder(this);
    }
    return orElse();
  }
}

abstract class _CartEventAddOrder implements CartEvent {
  const factory _CartEventAddOrder() = _$_CartEventAddOrder;
}

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(OrderItem orderItem) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OrderItem orderItem)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OrderItem orderItem)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartStateInitial value) initial,
    required TResult Function(CartStateData value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CartStateInitial value)? initial,
    TResult Function(CartStateData value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartStateInitial value)? initial,
    TResult Function(CartStateData value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res> implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  final CartState _value;
  // ignore: unused_field
  final $Res Function(CartState) _then;
}

/// @nodoc
abstract class _$$_CartStateInitialCopyWith<$Res> {
  factory _$$_CartStateInitialCopyWith(
          _$_CartStateInitial value, $Res Function(_$_CartStateInitial) then) =
      __$$_CartStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CartStateInitialCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res>
    implements _$$_CartStateInitialCopyWith<$Res> {
  __$$_CartStateInitialCopyWithImpl(
      _$_CartStateInitial _value, $Res Function(_$_CartStateInitial) _then)
      : super(_value, (v) => _then(v as _$_CartStateInitial));

  @override
  _$_CartStateInitial get _value => super._value as _$_CartStateInitial;
}

/// @nodoc

class _$_CartStateInitial implements _CartStateInitial {
  const _$_CartStateInitial();

  @override
  String toString() {
    return 'CartState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CartStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(OrderItem orderItem) data,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OrderItem orderItem)? data,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OrderItem orderItem)? data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartStateInitial value) initial,
    required TResult Function(CartStateData value) data,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CartStateInitial value)? initial,
    TResult Function(CartStateData value)? data,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartStateInitial value)? initial,
    TResult Function(CartStateData value)? data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CartStateInitial implements CartState {
  const factory _CartStateInitial() = _$_CartStateInitial;
}

/// @nodoc
abstract class _$$CartStateDataCopyWith<$Res> {
  factory _$$CartStateDataCopyWith(
          _$CartStateData value, $Res Function(_$CartStateData) then) =
      __$$CartStateDataCopyWithImpl<$Res>;
  $Res call({OrderItem orderItem});

  $OrderItemCopyWith<$Res> get orderItem;
}

/// @nodoc
class __$$CartStateDataCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$$CartStateDataCopyWith<$Res> {
  __$$CartStateDataCopyWithImpl(
      _$CartStateData _value, $Res Function(_$CartStateData) _then)
      : super(_value, (v) => _then(v as _$CartStateData));

  @override
  _$CartStateData get _value => super._value as _$CartStateData;

  @override
  $Res call({
    Object? orderItem = freezed,
  }) {
    return _then(_$CartStateData(
      orderItem: orderItem == freezed
          ? _value.orderItem
          : orderItem // ignore: cast_nullable_to_non_nullable
              as OrderItem,
    ));
  }

  @override
  $OrderItemCopyWith<$Res> get orderItem {
    return $OrderItemCopyWith<$Res>(_value.orderItem, (value) {
      return _then(_value.copyWith(orderItem: value));
    });
  }
}

/// @nodoc

class _$CartStateData implements CartStateData {
  const _$CartStateData({required this.orderItem});

  @override
  final OrderItem orderItem;

  @override
  String toString() {
    return 'CartState.data(orderItem: $orderItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartStateData &&
            const DeepCollectionEquality().equals(other.orderItem, orderItem));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(orderItem));

  @JsonKey(ignore: true)
  @override
  _$$CartStateDataCopyWith<_$CartStateData> get copyWith =>
      __$$CartStateDataCopyWithImpl<_$CartStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(OrderItem orderItem) data,
  }) {
    return data(orderItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OrderItem orderItem)? data,
  }) {
    return data?.call(orderItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OrderItem orderItem)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(orderItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartStateInitial value) initial,
    required TResult Function(CartStateData value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CartStateInitial value)? initial,
    TResult Function(CartStateData value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartStateInitial value)? initial,
    TResult Function(CartStateData value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class CartStateData implements CartState {
  const factory CartStateData({required final OrderItem orderItem}) =
      _$CartStateData;

  OrderItem get orderItem => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$CartStateDataCopyWith<_$CartStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
