import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:food_delivery/main.dart';

import '../../../../core/const.dart';
import '../../bloc/auth/auth_bloc.dart';
import '../pages/forget_password.dart';
import '../pages/sign_up_page.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  String? _email;
  String? _password;

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    _formKey.currentState!.save();

    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const Center(child: CircularProgressIndicator()));

    try {
      context
          .read<AuthBloc>()
          .add(AuthEvent.logIn(email: _email ?? "", password: _password ?? ""));
    } catch (_) {}
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }

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
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value != null && !EmailValidator.validate(value)) {
                      return 'Enter a valid email!';
                    }
                    return null;
                  },
                  onSaved: (value) => _email = value,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: 'Email address',
                  ),
                  autocorrect: false,
                  autofocus: false,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Password',
                  ),
                  autocorrect: false,
                  autofocus: false,
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty || value.length < 6) {
                      return 'Password must be at least 6 characters';
                    }
                    return null;
                  },
                  onSaved: (value) => _password = value,
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () => Navigator.pushNamed(
                            context, ForgetPasswordPage.routeName),
                        child: Text('Forget your password?',
                            style: TextStyle(
                                color: kSecondaryColor,
                                fontWeight: FontWeight.bold))),
                  ],
                ),
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
                    child:
                        Text('Login', style: TextStyle(color: kBtnTextColor)),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Don\'t have an account? ',
                      style: TextStyle(
                        color: kTexthint,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        FocusScope.of(context).unfocus();
                        Navigator.pushNamed(context, SignUpPage.routeName);
                      },
                      child: Text('Sign Up',
                          style: TextStyle(
                              color: kSecondaryColor,
                              fontWeight: FontWeight.bold)),
                    ),
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
