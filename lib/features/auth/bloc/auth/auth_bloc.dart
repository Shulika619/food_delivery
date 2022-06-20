import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState.notAuthorized()) {
    // FirebaseAuth.instance.authStateChanges().listen((userOrNull) {
    //   if (userOrNull == null) {
    //     on<_AuthEventLogOut>((event, emit) async {
    //       await FirebaseAuth.instance.signOut();
    //       emit(const AuthState.notAuthorized());
    //     });
    //     return;
    //   }
    // });
    on<_AuthEventLogIn>((event, emit) async {
      try {
        final credential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(
                email: event.email, password: event.password)
            .timeout(const Duration(seconds: 5));
        emit(const AuthState.authorized());
        // print('!!!!!! $credential !!!!!!!!!');
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          emit(const AuthState.error(message: 'No user found for that email.'));
        } else if (e.code == 'wrong-password') {
          emit(const AuthState.error(
              message: 'Wrong password provided for that user.'));
        }
        await Future.delayed(const Duration(seconds: 2));
        emit(const AuthState.notAuthorized());
      } on TimeoutException catch (_) {
        emit(const AuthState.error(
            message: 'TimeOut Error!!! The server is not responding'));
        await Future.delayed(const Duration(seconds: 2));
        emit(const AuthState.notAuthorized());
      } catch (e) {
        emit(const AuthState.error(message: 'Some Error!!!'));
        await Future.delayed(const Duration(seconds: 2));
        emit(const AuthState.notAuthorized());
      }
    });
    on<_AuthEventLogOut>((event, emit) async {
      await FirebaseAuth.instance.signOut();
      emit(const AuthState.notAuthorized());
    });
    on<_AuthEventForgotPass>((event, emit) async {
      try {
        await FirebaseAuth.instance.sendPasswordResetEmail(email: event.email);
        await Future.delayed(const Duration(seconds: 2));
        // emit(const AuthState.notAuthorized());
      } on FirebaseException catch (e) {
        // emit(AuthState.error(message: e.code));
        // await Future.delayed(const Duration(seconds: 2));
        // emit(const AuthState.notAuthorized());
      } catch (e) {
        rethrow;
      }
    });
    on<_AuthEventSignUp>((event, emit) async {
      try {
        await FirebaseAuth.instance.signOut();
        print('1111111 $state 11111111111');
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: event.email, password: event.password);
        // await Future.delayed(const Duration(seconds: 1));
        emit(const AuthState.authorized());
        print('22222222  $state 222222222222');
      } on FirebaseException catch (e) {
        emit(AuthState.error(message: e.code));
        await Future.delayed(const Duration(seconds: 2));
        emit(const AuthState.notAuthorized());
      } catch (e) {
        emit(AuthState.error(message: e.toString()));
        await Future.delayed(const Duration(seconds: 2));
        emit(const AuthState.notAuthorized());
      }
    });
  }
}

@freezed
class AuthEvent with _$AuthEvent {
  const AuthEvent._();
  // const factory AuthEvent.logInWithGoogle() = _AuthEventLogInWithGoogle;
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
  const factory AuthState.error({required String message}) = _AuthStateError;
}
