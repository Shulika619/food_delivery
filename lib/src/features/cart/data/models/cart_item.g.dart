// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartItem _$$_CartItemFromJson(Map<String, dynamic> json) => _$_CartItem(
      food: Food.fromJson(json['food'] as Map<String, dynamic>),
      quantity: json['quantity'] as int,
    );

Map<String, dynamic> _$$_CartItemToJson(_$_CartItem instance) =>
    <String, dynamic>{
      'food': instance.food,
      'quantity': instance.quantity,
    };
