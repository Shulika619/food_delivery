import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/const.dart';
import '../../bloc/auth/auth_bloc.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final GlobalKey<FormState> _formKeySignUp = GlobalKey();
  String? _email;
  String? _password;
  final _passwordController = TextEditingController();

  Future<void> _submit() async {
    if (!_formKeySignUp.currentState!.validate()) {
      return;
    }
    _formKeySignUp.currentState!.save();

    try {
      context.read<AuthBloc>().add(
          AuthEvent.signUp(email: _email ?? "", password: _password ?? ""));
    } catch (_) {}
  }

  @override
  void dispose() {
    super.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final state = context.watch<AuthBloc>().state;
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 50),
      decoration: BoxDecoration(
        color: kMainBgColor,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: Form(
        key: _formKeySignUp,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: 'Email address',
                  ),
                  autocorrect: false,
                  autofocus: false,
                  validator: (value) {
                    if (value != null && !EmailValidator.validate(value)) {
                      return 'Invalid email!';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _email = value;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Password',
                  ),
                  autocorrect: false,
                  autofocus: false,
                  obscureText: true,
                  controller: _passwordController,
                  validator: (value) {
                    if (value!.isEmpty || value.length < 6) {
                      return 'Password is too short!';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _password = value;
                  },
                ),
                TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: 'Confirm Password',
                    ),
                    autocorrect: false,
                    autofocus: false,
                    obscureText: true,
                    validator: (value) {
                      if (value != _passwordController.text) {
                        return 'Passwords do not match!';
                      }
                      return null;
                    }),
              ],
            ),
            Column(
              children: <Widget>[
                const SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).unfocus();
                    _submit();
                  },
                  child: Container(
                    width: 160,
                    height: 40,
                    alignment: Alignment.center,
                    child: Text(
                      'Let\'s Get Started',
                      style: TextStyle(
                        color: kBtnTextColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Already have an account? ',
                      style: TextStyle(
                          color: kTexthint, fontWeight: FontWeight.w400),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: kSecondaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
