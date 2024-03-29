import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/core/bloc/bloc_observer.dart';
import 'src/core/const.dart';
import 'src/features/auth/bloc/auth/auth_bloc.dart';
import 'src/features/auth/data/repositories/firebase_auth_repositiry.dart';
import 'src/features/auth/ui/pages/forget_password.dart';
import 'src/features/auth/ui/pages/sign_in_page.dart';
import 'src/features/auth/ui/pages/sign_up_page.dart';
import 'src/features/cart/bloc/cart/cart_bloc.dart';
import 'src/features/cart/data/repositories/orders_repository.dart';
import 'src/features/home/bloc/menu_bloc.dart';
import 'src/features/home/data/repositories/menu_repository.dart';
import 'src/features/home/ui/pages/main_page.dart';
import 'src/features/profile/cubit/past_orders_cubit.dart';
import 'src/features/profile/cubit/user_cubit.dart';
import 'src/features/profile/data/repositories/past_orders_repository.dart';
import 'src/features/profile/data/repositories/user_repository.dart';
import 'src/features/profile/ui/pages/edit_profile_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  BlocOverrides.runZoned(() => runApp(MyApp()),
      blocObserver: AppBlocObserver());

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final authRepository = FireBaseAuthRepository();
  final menuRepository = MenuRepository();
  final orderRepository = OrderRepository();
  final pastOrderRepository = PastOrdersRepository();
  final userRepository = UserRepository();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(repository: authRepository),
        ),
        BlocProvider<MenuBloc>(
          create: (context) => MenuBloc(repository: menuRepository),
        ),
        BlocProvider<CartBloc>(
          create: (context) => CartBloc(repository: orderRepository),
        ),
        BlocProvider<UserProfileCubit>(
          create: (context) => UserProfileCubit(repository: userRepository),
        ),
        BlocProvider<PastOrdersCubit>(
          create: (context) => PastOrdersCubit(repository: pastOrderRepository),
        ),
      ],
      child: MaterialApp(
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        title: 'Food Delivery',
        theme: ThemeData(
            primarySwatch: kMainColor,
            appBarTheme: const AppBarTheme(foregroundColor: kMainBgColor)),
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
          EditProfilePage.routeName: (context) => const EditProfilePage(),
        },
      ),
    );
  }
}
