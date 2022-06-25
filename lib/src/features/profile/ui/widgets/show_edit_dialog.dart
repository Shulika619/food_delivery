import 'package:flutter/material.dart';

class ShowEditDialog {
  TextEditingController textFieldController = TextEditingController();

  Future<String?> openDialog(BuildContext context, String hintTxt) async {
    textFieldController.clear();
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Refresh credential?'),
            content: TextField(
              autofocus: true,
              controller: textFieldController,
              decoration: InputDecoration(hintText: "Enter a new $hintTxt"),
              onSubmitted: (_) =>
                  Navigator.pop(context, textFieldController.text),
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  TextButton(
                    child: const Text('CANCEL'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  TextButton(
                    child: const Text('OK'),
                    onPressed: () {
                      Navigator.pop(context, textFieldController.text);
                    },
                  ),
                ],
              ),
            ],
          );
        });
  }
}
