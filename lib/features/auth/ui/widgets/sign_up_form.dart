import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/auth/auth_bloc.dart';

class SignUpForm extends StatefulWidget {
  SignUpForm({Key? key}) : super(key: key);

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

    context
        .read<AuthBloc>()
        .add(AuthEvent.signUp(email: _email ?? "", password: _password ?? ""));
  }

  @override
  Widget build(BuildContext context) {
    // final state = context.read<AuthBloc>().state;
    // if (state == AuthState.authorized()) {
    //   Navigator.pop(context);
    // }
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 50),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
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
                    if (value!.isEmpty || !value.contains('@')) {
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
                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).unfocus();
                    _submit();
                  },
                  child: Container(
                    width: 160,
                    height: 40,
                    alignment: Alignment.center,
                    child: const Text(
                      'Let\'s Get Started',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'Already have an account? ',
                      style: TextStyle(
                          color: Color(0xff485068),
                          fontWeight: FontWeight.w400),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.green[600],
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