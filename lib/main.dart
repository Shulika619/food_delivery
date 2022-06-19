import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/features/auth/bloc/auth/auth_bloc.dart';
import 'package:food_delivery/features/auth/ui/pages/sign_in_page.dart';
import 'package:food_delivery/features/auth/ui/pages/sign_up_page.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'bloc_observer.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final storage = await HydratedStorage.build(
      storageDirectory: await getTemporaryDirectory());
  HydratedBlocOverrides.runZoned(() => runApp(const MyApp()),
      blocObserver: AppBlocObserver(), storage: storage);
}

// void main() => const MyApp();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Food Delivery',
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        home: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) => state.maybeWhen(
              notAuthorized: () => const SignInPage(),
              loadInProgress: () =>
                  const Center(child: CircularProgressIndicator()),
              authorized: () => const MainPage(),
              // error: (msg) => Center(child: Text(msg)),
              orElse: () => const SignInPage()),
        ),
        routes: {
          SignInPage.routeName: (context) => SignInPage(),
          SignUpPage.routeName: (context) => const SignUpPage(),
        },
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: const SizedBox(
            child: Center(
      child: Text('Main Page'),
    )));
  }
}
