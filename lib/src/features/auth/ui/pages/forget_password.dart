import 'package:flutter/material.dart';

import '../../../../core/const.dart';
import '../widgets/fortet_password_form.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({Key? key}) : super(key: key);

  static const routeName = '/forget-password';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Password recovery",
          style: TextStyle(
              color: kAppBarTextColor,
              fontWeight: FontWeight.bold,
              fontSize: 25),
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: CustomScrollView(
          reverse: true,
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: <Widget>[
                  Image.asset('assets/images/forget password.jpg'),
                  Expanded(
                    child: ForgetPasswordForm(),
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
