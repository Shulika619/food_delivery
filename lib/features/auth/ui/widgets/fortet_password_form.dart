import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../const.dart';
import '../../bloc/auth/auth_bloc.dart';

class ForgetPasswordForm extends StatelessWidget {
  ForgetPasswordForm({Key? key}) : super(key: key);
  String? _email;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 50),
      decoration: BoxDecoration(
        color: kMainBgColor,
        borderRadius: const BorderRadius.only(
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
                },
                child: Container(
                  width: 160,
                  height: 40,
                  alignment: Alignment.center,
                  child: Text('Reset', style: TextStyle(color: kBtnTextColor)),
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
