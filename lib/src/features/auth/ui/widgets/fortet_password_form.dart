import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/const.dart';
import '../../bloc/auth/auth_bloc.dart';

class ForgetPasswordForm extends StatelessWidget {
  const ForgetPasswordForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? email;
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 50),
      decoration: const BoxDecoration(
        color: kMainBgColor,
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
                onChanged: (value) => email = value,
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
                      .add(AuthEvent.forgotPass(email: email ?? ""));
                },
                child: Container(
                  width: 160,
                  height: 40,
                  alignment: Alignment.center,
                  child: const Text('Reset',
                      style: TextStyle(color: kBtnTextColor)),
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
