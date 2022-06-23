import 'package:flutter/material.dart';

import '../../../../const.dart';
import '../widgets/sign_in_form.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  static const routeName = '/sign-in';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login",
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
                  Image.asset('assets/images/login.png'),
                  const Expanded(
                    child: SignInForm(),
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
