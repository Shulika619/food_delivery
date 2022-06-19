import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/features/auth/bloc/auth/auth_bloc.dart';
import 'package:food_delivery/features/auth/ui/pages/sign_up_page.dart';

class SignInForm extends StatefulWidget {
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
    context
        .read<AuthBloc>()
        .add(AuthEvent.logIn(email: _email ?? "", password: _password ?? ""));
  }

  @override
  Widget build(BuildContext context) {
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
        key: _formKey,
        // autovalidate: state.showErrorMessages,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value!.isEmpty || !value.contains('@')) {
                      return 'Invalid email!';
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
                  // onChanged: (value) => null,
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
                  // onChanged: (value) => null,
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Forget your password?',
                        style: TextStyle(
                            color: Colors.green[600],
                            fontWeight: FontWeight.bold))
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
                    // TODO:
                  },
                  child: Container(
                    width: 160,
                    height: 40,
                    alignment: Alignment.center,
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'Don\'t have an account? ',
                      style: TextStyle(
                        color: Color(0xff485068),
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
                              color: Colors.green[600],
                              fontWeight: FontWeight.bold)),
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
