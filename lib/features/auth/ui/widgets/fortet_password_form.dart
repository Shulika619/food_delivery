import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../bloc/auth/auth_bloc.dart';

class ForgetPasswordForm extends StatelessWidget {
  String? _email;

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AuthBloc>().state;

    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 50),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              TextField(
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) => _email = value,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Email address',
                ),
                autocorrect: false,
                autofocus: false,
              ),
              const SizedBox(height: 8),
            ],
          ),
          Column(
            children: <Widget>[
              ElevatedButton(
                onPressed: () async {
                  context
                      .read<AuthBloc>()
                      .add(AuthEvent.forgotPass(email: _email ?? ""));
                  // await Future.delayed(const Duration(seconds: 2));
                  Fluttertoast.showToast(
                      msg: 'Check your email',
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 2,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0);
                  Navigator.pop(context);
                },
                child: Container(
                  width: 160,
                  height: 40,
                  alignment: Alignment.center,
                  child: const Text('Reset',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ],
      ),
    );
  }
}
