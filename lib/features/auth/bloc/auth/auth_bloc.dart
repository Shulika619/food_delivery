import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState.notAuthorized()) {
    FirebaseAuth.instance.authStateChanges().listen((userOrNull) {
      if (userOrNull == null) {
        on<_AuthEventLogOut>((event, emit) async {
          // await FirebaseAuth.instance.signOut();
          emit(const AuthState.notAuthorized());
        });
        return;
      }
    });
    on<_AuthEventLogIn>((event, emit) async {
      // emit(const AuthState.loadInProgress());
      try {
        final credential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(
                email: event.email, password: event.password);
        emit(const AuthState.authorized());
        print('!!!!!! $credential !!!!!!!!!');
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          print('No user found for that email.');
          emit(const AuthState.error(message: 'No user found for that email.'));
        } else if (e.code == 'wrong-password') {
          print('Wrong password provided for that user.');
          emit(const AuthState.error(
              message: 'Wrong password provided for that user.'));
        }
      }
    });
    on<_AuthEventLogOut>((event, emit) async {
      await FirebaseAuth.instance.signOut();
      emit(const AuthState.notAuthorized());
    });
  }
}

@freezed
class AuthEvent with _$AuthEvent {
  const AuthEvent._();
  // const factory AuthEvent.logInWithGoogle() = _AuthEventLogInWithGoogle;
  const factory AuthEvent.logIn(
      {required String email, required String password}) = _AuthEventLogIn;
  const factory AuthEvent.logOut() = _AuthEventLogOut;
}

@freezed
class AuthState with _$AuthState {
  const AuthState._();
  const factory AuthState.notAuthorized() = _AuthStateNotAuthorized;
  const factory AuthState.loadInProgress() = _AuthStateLoadInProgress;
  const factory AuthState.authorized() = _AuthStateAuthorized;
  const factory AuthState.error({required String message}) = _AuthStateError;
}
