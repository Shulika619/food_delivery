// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'food.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Food _$FoodFromJson(Map<String, dynamic> json) {
  return _Food.fromJson(json);
}

/// @nodoc
mixin _$Food {
  String get foodId => throw _privateConstructorUsedError;
  String get foodName => throw _privateConstructorUsedError;
  String get foodImageName => throw _privateConstructorUsedError;
  String get foodCategory => throw _privateConstructorUsedError;
  String get foodPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoodCopyWith<Food> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodCopyWith<$Res> {
  factory $FoodCopyWith(Food value, $Res Function(Food) then) =
      _$FoodCopyWithImpl<$Res>;
  $Res call(
      {String foodId,
      String foodName,
      String foodImageName,
      String foodCategory,
      String foodPrice});
}

/// @nodoc
class _$FoodCopyWithImpl<$Res> implements $FoodCopyWith<$Res> {
  _$FoodCopyWithImpl(this._value, this._then);

  final Food _value;
  // ignore: unused_field
  final $Res Function(Food) _then;

  @override
  $Res call({
    Object? foodId = freezed,
    Object? foodName = freezed,
    Object? foodImageName = freezed,
    Object? foodCategory = freezed,
    Object? foodPrice = freezed,
  }) {
    return _then(_value.copyWith(
      foodId: foodId == freezed
          ? _value.foodId
          : foodId // ignore: cast_nullable_to_non_nullable
              as String,
      foodName: foodName == freezed
          ? _value.foodName
          : foodName // ignore: cast_nullable_to_non_nullable
              as String,
      foodImageName: foodImageName == freezed
          ? _value.foodImageName
          : foodImageName // ignore: cast_nullable_to_non_nullable
              as String,
      foodCategory: foodCategory == freezed
          ? _value.foodCategory
          : foodCategory // ignore: cast_nullable_to_non_nullable
              as String,
      foodPrice: foodPrice == freezed
          ? _value.foodPrice
          : foodPrice // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_FoodCopyWith<$Res> implements $FoodCopyWith<$Res> {
  factory _$$_FoodCopyWith(_$_Food value, $Res Function(_$_Food) then) =
      __$$_FoodCopyWithImpl<$Res>;
  @override
  $Res call(
      {String foodId,
      String foodName,
      String foodImageName,
      String foodCategory,
      String foodPrice});
}

/// @nodoc
class __$$_FoodCopyWithImpl<$Res> extends _$FoodCopyWithImpl<$Res>
    implements _$$_FoodCopyWith<$Res> {
  __$$_FoodCopyWithImpl(_$_Food _value, $Res Function(_$_Food) _then)
      : super(_value, (v) => _then(v as _$_Food));

  @override
  _$_Food get _value => super._value as _$_Food;

  @override
  $Res call({
    Object? foodId = freezed,
    Object? foodName = freezed,
    Object? foodImageName = freezed,
    Object? foodCategory = freezed,
    Object? foodPrice = freezed,
  }) {
    return _then(_$_Food(
      foodId: foodId == freezed
          ? _value.foodId
          : foodId // ignore: cast_nullable_to_non_nullable
              as String,
      foodName: foodName == freezed
          ? _value.foodName
          : foodName // ignore: cast_nullable_to_non_nullable
              as String,
      foodImageName: foodImageName == freezed
          ? _value.foodImageName
          : foodImageName // ignore: cast_nullable_to_non_nullable
              as String,
      foodCategory: foodCategory == freezed
          ? _value.foodCategory
          : foodCategory // ignore: cast_nullable_to_non_nullable
              as String,
      foodPrice: foodPrice == freezed
          ? _value.foodPrice
          : foodPrice // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Food implements _Food {
  const _$_Food(
      {required this.foodId,
      required this.foodName,
      required this.foodImageName,
      required this.foodCategory,
      required this.foodPrice});

  factory _$_Food.fromJson(Map<String, dynamic> json) => _$$_FoodFromJson(json);

  @override
  final String foodId;
  @override
  final String foodName;
  @override
  final String foodImageName;
  @override
  final String foodCategory;
  @override
  final String foodPrice;

  @override
  String toString() {
    return 'Food(foodId: $foodId, foodName: $foodName, foodImageName: $foodImageName, foodCategory: $foodCategory, foodPrice: $foodPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Food &&
            const DeepCollectionEquality().equals(other.foodId, foodId) &&
            const DeepCollectionEquality().equals(other.foodName, foodName) &&
            const DeepCollectionEquality()
                .equals(other.foodImageName, foodImageName) &&
            const DeepCollectionEquality()
                .equals(other.foodCategory, foodCategory) &&
            const DeepCollectionEquality().equals(other.foodPrice, foodPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(foodId),
      const DeepCollectionEquality().hash(foodName),
      const DeepCollectionEquality().hash(foodImageName),
      const DeepCollectionEquality().hash(foodCategory),
      const DeepCollectionEquality().hash(foodPrice));

  @JsonKey(ignore: true)
  @override
  _$$_FoodCopyWith<_$_Food> get copyWith =>
      __$$_FoodCopyWithImpl<_$_Food>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FoodToJson(this);
  }
}

abstract class _Food implements Food {
  const factory _Food(
      {required final String foodId,
      required final String foodName,
      required final String foodImageName,
      required final String foodCategory,
      required final String foodPrice}) = _$_Food;

  factory _Food.fromJson(Map<String, dynamic> json) = _$_Food.fromJson;

  @override
  String get foodId => throw _privateConstructorUsedError;
  @override
  String get foodName => throw _privateConstructorUsedError;
  @override
  String get foodImageName => throw _privateConstructorUsedError;
  @override
  String get foodCategory => throw _privateConstructorUsedError;
  @override
  String get foodPrice => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FoodCopyWith<_$_Food> get copyWith => throw _privateConstructorUsedError;
}
