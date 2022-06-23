import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/src/core/errors/bloc_observer.dart';

import 'src/core/const.dart';
import 'src/features/auth/bloc/auth/auth_bloc.dart';
import 'src/features/auth/ui/pages/forget_password.dart';
import 'src/features/auth/ui/pages/sign_in_page.dart';
import 'src/features/auth/ui/pages/sign_up_page.dart';
import 'src/features/home/ui/pages/main_page.dart';
import 'src/features/profile/ui/pages/my_info.dart';

// import 'package:hydrated_bloc/hydrated_bloc.dart';
// import 'package:path_provider/path_provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  BlocOverrides.runZoned(() => runApp(const MyApp()),
      blocObserver: AppBlocObserver());

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
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
            // fontFamily: 'Forum',
            primarySwatch: kMainColor,
            appBarTheme: AppBarTheme(foregroundColor: kMainBgColor)),
        home: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return state.when(
              notAuthorized: () => const SignInPage(),
              authorized: (user) => const MainPage(),
            );
          },
        ),
        routes: {
          MainPage.routeName: (context) => const MainPage(),
          SignInPage.routeName: (context) => const SignInPage(),
          SignUpPage.routeName: (context) => const SignUpPage(),
          ForgetPasswordPage.routeName: (context) => const ForgetPasswordPage(),
          MyInfo.routeName: (context) => const MyInfo(),
        },
      ),
    );
  }
}
