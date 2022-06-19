import 'package:flutter/material.dart';

import '../widgets/sign_up_form.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  static const routeName = '/sign-up';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Create Account",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        backgroundColor: Colors.amber,
        elevation: 0,
      ),
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: Container(
          // color: const Color(0xffe0e9f8),
          child: CustomScrollView(
            reverse: true,
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/signUp.png',
                      fit: BoxFit.cover,
                    ),
                    Expanded(
                      child: SignUpForm(),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
