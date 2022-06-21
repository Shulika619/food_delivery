import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../main.dart';
import '../../data/models/flutter_toast_warning.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> with _SetStateMixin {
  AuthBloc() : super(const AuthState.notAuthorized()) {
    FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

    _firebaseAuth.authStateChanges().listen((userOrNull) {
      if (userOrNull == null) {
        setState(const AuthState.notAuthorized());
        return;
      } else {
        setState(const AuthState.authorized());
      }
    }, cancelOnError: false);

    on<_AuthEventLogIn>((event, emit) async {
      try {
        await _firebaseAuth
            .signInWithEmailAndPassword(
                email: event.email, password: event.password)
            .timeout(const Duration(seconds: 5));
      } on FirebaseAuthException catch (e) {
        FlutterToastWarning.showToast(e.message.toString());
      } on TimeoutException catch (_) {
        FlutterToastWarning.showToast(
            'TimeOut Error!!! The server is not responding, check Internet connection!');
      } catch (_) {
        FlutterToastWarning.showToast('Some Error SignIn!!!');
        rethrow;
      }
    });

    on<_AuthEventLogOut>((event, emit) async {
      await _firebaseAuth.signOut();
    });

    on<_AuthEventForgotPass>((event, emit) async {
      try {
        await _firebaseAuth.sendPasswordResetEmail(email: event.email);
        FlutterToastWarning.showToast('Check your email');
        navigatorKey.currentState!.popUntil((route) => route.isFirst);
      } on FirebaseException catch (e) {
        FlutterToastWarning.showToast(e.message.toString());
      } catch (e) {
        FlutterToastWarning.showToast('Some Error ForgotPass!!!');
      }
    });

    on<_AuthEventSignUp>((event, emit) async {
      try {
        await _firebaseAuth.signOut();
        await _firebaseAuth.createUserWithEmailAndPassword(
            email: event.email, password: event.password);
        navigatorKey.currentState!.popUntil((route) => route.isFirst);
      } on FirebaseException catch (e) {
        FlutterToastWarning.showToast(e.message.toString());
      } on TimeoutException catch (_) {
        FlutterToastWarning.showToast(
            'TimeOut Error!!! The server is not responding, check Internet connection!');
      } catch (_) {
        FlutterToastWarning.showToast('Some Error SignUp!!!');
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
  const factory AuthState.authorized() = _AuthStateAuthorized;
}
