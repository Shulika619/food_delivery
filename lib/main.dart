import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/features/auth/bloc/auth/auth_bloc.dart';
import 'package:food_delivery/features/auth/ui/pages/forget_password.dart';
import 'package:food_delivery/features/auth/ui/pages/sign_in_page.dart';
import 'package:food_delivery/features/auth/ui/pages/sign_up_page.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'bloc_observer.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
  // final storage = await HydratedStorage.build(
  //     storageDirectory: await getTemporaryDirectory());
  // HydratedBlocOverrides.runZoned(() => runApp(const MyApp()),
  //     blocObserver: AppBlocObserver(), storage: storage);
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: MaterialApp(
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        title: 'Food Delivery',
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        home: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return state.when(
              notAuthorized: () => const SignInPage(),
              authorized: () => const MainPage(),
            );
          },
        ),
        routes: {
          MainPage.routeName: (context) => const MainPage(),
          SignInPage.routeName: (context) => const SignInPage(),
          SignUpPage.routeName: (context) => const SignUpPage(),
          ForgetPasswordPage.routeName: (context) => const ForgetPasswordPage(),
        },
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  static const routeName = '/main-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
            child: Center(
      child: ElevatedButton(
          onPressed: () {
            // context.read<AuthBloc>().add(const AuthEvent.logOut());
            FirebaseAuth.instance.signOut();
          },
          child: const Text('LogOut')),
    )));
  }
}
