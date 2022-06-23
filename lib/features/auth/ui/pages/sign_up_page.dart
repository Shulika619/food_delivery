import 'package:flutter/material.dart';

import '../../../../const.dart';
import '../widgets/sign_up_form.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  static const routeName = '/sign-up';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Create Account",
          style: TextStyle(
              color: kAppBarTextColor,
              fontWeight: FontWeight.bold,
              fontSize: 25),
        ),
        backgroundColor: kMainColor,
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
                  Image.asset(
                    'assets/images/signUp.png',
                    // fit: BoxFit.cover,
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
