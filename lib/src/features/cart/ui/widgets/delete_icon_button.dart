import 'package:flutter/material.dart';
import 'package:food_delivery/src/core/const.dart';

class DeleteIconButton extends StatefulWidget {
  final String foodName;
  const DeleteIconButton({Key? key, required this.foodName}) : super(key: key);

  @override
  State<DeleteIconButton> createState() => _DeleteIconButtonState();
}

class _DeleteIconButtonState extends State<DeleteIconButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Delete ${widget.foodName}?"),
              action: SnackBarAction(
                  label: "Yes",
                  onPressed: () {
                    print("---- Deleted: ");
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
