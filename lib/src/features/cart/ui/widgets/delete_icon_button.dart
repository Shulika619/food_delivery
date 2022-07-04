import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/src/core/const.dart';
import 'package:food_delivery/src/features/cart/data/bloc/cart/cart_bloc.dart';

import '../../../home/data/models/food.dart';

class DeleteIconButton extends StatefulWidget {
  final Food food;
  const DeleteIconButton({Key? key, required this.food}) : super(key: key);

  @override
  State<DeleteIconButton> createState() => _DeleteIconButtonState();
}

class _DeleteIconButtonState extends State<DeleteIconButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          ScaffoldMessenger.of(context).clearSnackBars();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: kSecondColor,
              content: Text("Delete ${widget.food.foodName}?"),
              action: SnackBarAction(
                  label: "Yes",
                  onPressed: () {
                    context
                        .read<CartBloc>()
                        .add(CartEvent.deleteItem(food: widget.food));
                  }),
            ),
          );
        },
        icon: const Icon(
          Icons.delete_outline,
          color: kThirdColor,
        ));
  }
}
