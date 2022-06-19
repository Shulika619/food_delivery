import 'package:flutter/material.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 30,
        bottom: 50,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: Form(
        // autovalidate: state.showErrorMessages,
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
                    onChanged: (value) => null),
                TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: 'Password',
                    ),
                    autocorrect: false,
                    autofocus: false,
                    obscureText: true,
                    onChanged: (value) => null),
                TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: 'Confirm Password',
                    ),
                    autocorrect: false,
                    autofocus: false,
                    obscureText: true,
                    onChanged: (value) => null),
              ],
            ),
            Column(
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).unfocus();
                    //
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
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'Already have an account? ',
                      style: TextStyle(
                        color: Color(0xff485068),
                        fontWeight: FontWeight.w400,
                      ),
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

  // void showSnackBar(BuildContext context, Widget snackBar) {
  //   Scaffold.of(context).showSnackBar(snackBar);
  // }
}
