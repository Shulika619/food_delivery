import 'package:flutter/material.dart';

import '../../../../core/const.dart';
import '../widgets/sign_up_form.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  static const routeName = '/sign-up';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Account",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
        elevation: 0,
      ),
      backgroundColor: kMainColor,
      body: SafeArea(
        child: CustomScrollView(
          reverse: true,
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 320,
                    child: Image.asset(
                      'assets/images/signUp.png',
                      // fit: BoxFit.cover,
                    ),
                  ),
                  const Expanded(
                    child: SignUpForm(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
