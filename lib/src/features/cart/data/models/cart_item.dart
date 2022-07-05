import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../home/data/models/food.dart';

part 'cart_item.freezed.dart';
part 'cart_item.g.dart';

@freezed
class CartItem with _$CartItem {
  @JsonSerializable(explicitToJson: true)
  const factory CartItem({
    required Food food,
    required int quantity,
  }) = _CartItem;

  factory CartItem.fromJson(Map<String, dynamic> json) =>
      _$CartItemFromJson(json);
}
