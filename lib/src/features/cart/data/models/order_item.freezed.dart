// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderItem _$OrderItemFromJson(Map<String, dynamic> json) {
  return _OrderItem.fromJson(json);
}

/// @nodoc
mixin _$OrderItem {
  List<CartItem> get items => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  DateTime? get dateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderItemCopyWith<OrderItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemCopyWith<$Res> {
  factory $OrderItemCopyWith(OrderItem value, $Res Function(OrderItem) then) =
      _$OrderItemCopyWithImpl<$Res>;
  $Res call({List<CartItem> items, double amount, DateTime? dateTime});
}

/// @nodoc
class _$OrderItemCopyWithImpl<$Res> implements $OrderItemCopyWith<$Res> {
  _$OrderItemCopyWithImpl(this._value, this._then);

  final OrderItem _value;
  // ignore: unused_field
  final $Res Function(OrderItem) _then;

  @override
  $Res call({
    Object? items = freezed,
    Object? amount = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_OrderItemCopyWith<$Res> implements $OrderItemCopyWith<$Res> {
  factory _$$_OrderItemCopyWith(
          _$_OrderItem value, $Res Function(_$_OrderItem) then) =
      __$$_OrderItemCopyWithImpl<$Res>;
  @override
  $Res call({List<CartItem> items, double amount, DateTime? dateTime});
}

/// @nodoc
class __$$_OrderItemCopyWithImpl<$Res> extends _$OrderItemCopyWithImpl<$Res>
    implements _$$_OrderItemCopyWith<$Res> {
  __$$_OrderItemCopyWithImpl(
      _$_OrderItem _value, $Res Function(_$_OrderItem) _then)
      : super(_value, (v) => _then(v as _$_OrderItem));

  @override
  _$_OrderItem get _value => super._value as _$_OrderItem;

  @override
  $Res call({
    Object? items = freezed,
    Object? amount = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_$_OrderItem(
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderItem implements _OrderItem {
  const _$_OrderItem(
      {required final List<CartItem> items,
      required this.amount,
      this.dateTime})
      : _items = items;

  factory _$_OrderItem.fromJson(Map<String, dynamic> json) =>
      _$$_OrderItemFromJson(json);

  final List<CartItem> _items;
  @override
  List<CartItem> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final double amount;
  @override
  final DateTime? dateTime;

  @override
  String toString() {
    return 'OrderItem(items: $items, amount: $amount, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderItem &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(dateTime));

  @JsonKey(ignore: true)
  @override
  _$$_OrderItemCopyWith<_$_OrderItem> get copyWith =>
      __$$_OrderItemCopyWithImpl<_$_OrderItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderItemToJson(this);
  }
}

abstract class _OrderItem implements OrderItem {
  const factory _OrderItem(
      {required final List<CartItem> items,
      required final double amount,
      final DateTime? dateTime}) = _$_OrderItem;

  factory _OrderItem.fromJson(Map<String, dynamic> json) =
      _$_OrderItem.fromJson;

  @override
  List<CartItem> get items => throw _privateConstructorUsedError;
  @override
  double get amount => throw _privateConstructorUsedError;
  @override
  DateTime? get dateTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OrderItemCopyWith<_$_OrderItem> get copyWith =>
      throw _privateConstructorUsedError;
}
