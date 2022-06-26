import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../main.dart';
import '../../../../core/errors/flutter_toast_warning.dart';
import '../../data/repositories/firebase_auth_repositiry.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> with _SetStateMixin {
  FireBaseAuthRepository firebaseRepo = FireBaseAuthRepository();

  AuthBloc() : super(const AuthState.notAuthorized()) {
    firebaseRepo.authStateChange.listen((user) {
      if (user == null) {
        setState(const AuthState.notAuthorized());
        return;
      } else {
        setState(AuthState.authorized(user: user));
      }
    }, cancelOnError: false);

    on<_AuthEventLogIn>((event, emit) async {
      try {
        await firebaseRepo
            .signInWithEmailAndPassword(event.email, event.password)
            .timeout(const Duration(seconds: 5));
      } on FirebaseAuthException catch (e) {
        FlutterToastWarning.showToast(
            message: e.message.toString(), isError: true);
      } on TimeoutException catch (_) {
        FlutterToastWarning.showToast(
            message:
                'TimeOut Error!!! The server is not responding, check Internet connection!',
            isError: true);
      } catch (_) {
        FlutterToastWarning.showToast(
            message: 'Some Error SignIn!!!', isError: true);
        rethrow;
      }
    });

    on<_AuthEventLogOut>((event, emit) async {
      await firebaseRepo.signOut();
    });

    on<_AuthEventForgotPass>((event, emit) async {
      try {
        await firebaseRepo.sendPasswordResetEmail(event.email);
        FlutterToastWarning.showToast(
            message: 'Check your email', isError: false);
        navigatorKey.currentState!.popUntil((route) => route.isFirst);
      } on FirebaseException catch (e) {
        FlutterToastWarning.showToast(
            message: e.message.toString(), isError: true);
      } catch (e) {
        FlutterToastWarning.showToast(
            message: 'Some Error ForgotPass!!!', isError: true);
      }
    });

    on<_AuthEventSignUp>((event, emit) async {
      try {
        await firebaseRepo.signOut();
        await firebaseRepo.createUserWithEmailAndPassword(
            event.email, event.password);
        navigatorKey.currentState!.popUntil((route) => route.isFirst);
      } on FirebaseException catch (e) {
        FlutterToastWarning.showToast(
            message: e.message.toString(), isError: true);
      } on TimeoutException catch (_) {
        FlutterToastWarning.showToast(
            message:
                'TimeOut Error!!! The server is not responding, check Internet connection!',
            isError: true);
      } catch (_) {
        FlutterToastWarning.showToast(
            message: 'Some Error SignUp!!!', isError: true);
      }
    });
  }
}

mixin _SetStateMixin<State extends Object?> on BlocBase<State> {
  void setState(State state) => emit(state);
}

@freezed
class AuthEvent with _$AuthEvent {
  const AuthEvent._();
  const factory AuthEvent.logIn(
      {required String email, required String password}) = _AuthEventLogIn;
  const factory AuthEvent.signUp(
      {required String email, required String password}) = _AuthEventSignUp;
  const factory AuthEvent.logOut() = _AuthEventLogOut;
  const factory AuthEvent.forgotPass({required String email}) =
      _AuthEventForgotPass;
}

@freezed
class AuthState with _$AuthState {
  const AuthState._();
  const factory AuthState.notAuthorized() = _AuthStateNotAuthorized;
  const factory AuthState.authorized({required User user}) =
      _AuthStateAuthorized;
}
