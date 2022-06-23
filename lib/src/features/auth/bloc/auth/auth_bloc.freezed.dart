// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) logIn,
    required TResult Function(String email, String password) signUp,
    required TResult Function() logOut,
    required TResult Function(String email) forgotPass,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function(String email, String password)? signUp,
    TResult Function()? logOut,
    TResult Function(String email)? forgotPass,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function(String email, String password)? signUp,
    TResult Function()? logOut,
    TResult Function(String email)? forgotPass,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthEventLogIn value) logIn,
    required TResult Function(_AuthEventSignUp value) signUp,
    required TResult Function(_AuthEventLogOut value) logOut,
    required TResult Function(_AuthEventForgotPass value) forgotPass,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthEventLogIn value)? logIn,
    TResult Function(_AuthEventSignUp value)? signUp,
    TResult Function(_AuthEventLogOut value)? logOut,
    TResult Function(_AuthEventForgotPass value)? forgotPass,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEventLogIn value)? logIn,
    TResult Function(_AuthEventSignUp value)? signUp,
    TResult Function(_AuthEventLogOut value)? logOut,
    TResult Function(_AuthEventForgotPass value)? forgotPass,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class _$$_AuthEventLogInCopyWith<$Res> {
  factory _$$_AuthEventLogInCopyWith(
          _$_AuthEventLogIn value, $Res Function(_$_AuthEventLogIn) then) =
      __$$_AuthEventLogInCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class __$$_AuthEventLogInCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_AuthEventLogInCopyWith<$Res> {
  __$$_AuthEventLogInCopyWithImpl(
      _$_AuthEventLogIn _value, $Res Function(_$_AuthEventLogIn) _then)
      : super(_value, (v) => _then(v as _$_AuthEventLogIn));

  @override
  _$_AuthEventLogIn get _value => super._value as _$_AuthEventLogIn;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_AuthEventLogIn(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthEventLogIn extends _AuthEventLogIn {
  const _$_AuthEventLogIn({required this.email, required this.password})
      : super._();

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.logIn(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthEventLogIn &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_AuthEventLogInCopyWith<_$_AuthEventLogIn> get copyWith =>
      __$$_AuthEventLogInCopyWithImpl<_$_AuthEventLogIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) logIn,
    required TResult Function(String email, String password) signUp,
    required TResult Function() logOut,
    required TResult Function(String email) forgotPass,
  }) {
    return logIn(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function(String email, String password)? signUp,
    TResult Function()? logOut,
    TResult Function(String email)? forgotPass,
  }) {
    return logIn?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function(String email, String password)? signUp,
    TResult Function()? logOut,
    TResult Function(String email)? forgotPass,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthEventLogIn value) logIn,
    required TResult Function(_AuthEventSignUp value) signUp,
    required TResult Function(_AuthEventLogOut value) logOut,
    required TResult Function(_AuthEventForgotPass value) forgotPass,
  }) {
    return logIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthEventLogIn value)? logIn,
    TResult Function(_AuthEventSignUp value)? signUp,
    TResult Function(_AuthEventLogOut value)? logOut,
    TResult Function(_AuthEventForgotPass value)? forgotPass,
  }) {
    return logIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEventLogIn value)? logIn,
    TResult Function(_AuthEventSignUp value)? signUp,
    TResult Function(_AuthEventLogOut value)? logOut,
    TResult Function(_AuthEventForgotPass value)? forgotPass,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(this);
    }
    return orElse();
  }
}

abstract class _AuthEventLogIn extends AuthEvent {
  const factory _AuthEventLogIn(
      {required final String email,
      required final String password}) = _$_AuthEventLogIn;
  const _AuthEventLogIn._() : super._();

  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_AuthEventLogInCopyWith<_$_AuthEventLogIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthEventSignUpCopyWith<$Res> {
  factory _$$_AuthEventSignUpCopyWith(
          _$_AuthEventSignUp value, $Res Function(_$_AuthEventSignUp) then) =
      __$$_AuthEventSignUpCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class __$$_AuthEventSignUpCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_AuthEventSignUpCopyWith<$Res> {
  __$$_AuthEventSignUpCopyWithImpl(
      _$_AuthEventSignUp _value, $Res Function(_$_AuthEventSignUp) _then)
      : super(_value, (v) => _then(v as _$_AuthEventSignUp));

  @override
  _$_AuthEventSignUp get _value => super._value as _$_AuthEventSignUp;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_AuthEventSignUp(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthEventSignUp extends _AuthEventSignUp {
  const _$_AuthEventSignUp({required this.email, required this.password})
      : super._();

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signUp(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthEventSignUp &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_AuthEventSignUpCopyWith<_$_AuthEventSignUp> get copyWith =>
      __$$_AuthEventSignUpCopyWithImpl<_$_AuthEventSignUp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) logIn,
    required TResult Function(String email, String password) signUp,
    required TResult Function() logOut,
    required TResult Function(String email) forgotPass,
  }) {
    return signUp(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function(String email, String password)? signUp,
    TResult Function()? logOut,
    TResult Function(String email)? forgotPass,
  }) {
    return signUp?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function(String email, String password)? signUp,
    TResult Function()? logOut,
    TResult Function(String email)? forgotPass,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthEventLogIn value) logIn,
    required TResult Function(_AuthEventSignUp value) signUp,
    required TResult Function(_AuthEventLogOut value) logOut,
    required TResult Function(_AuthEventForgotPass value) forgotPass,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthEventLogIn value)? logIn,
    TResult Function(_AuthEventSignUp value)? signUp,
    TResult Function(_AuthEventLogOut value)? logOut,
    TResult Function(_AuthEventForgotPass value)? forgotPass,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEventLogIn value)? logIn,
    TResult Function(_AuthEventSignUp value)? signUp,
    TResult Function(_AuthEventLogOut value)? logOut,
    TResult Function(_AuthEventForgotPass value)? forgotPass,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class _AuthEventSignUp extends AuthEvent {
  const factory _AuthEventSignUp(
      {required final String email,
      required final String password}) = _$_AuthEventSignUp;
  const _AuthEventSignUp._() : super._();

  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_AuthEventSignUpCopyWith<_$_AuthEventSignUp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthEventLogOutCopyWith<$Res> {
  factory _$$_AuthEventLogOutCopyWith(
          _$_AuthEventLogOut value, $Res Function(_$_AuthEventLogOut) then) =
      __$$_AuthEventLogOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthEventLogOutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_AuthEventLogOutCopyWith<$Res> {
  __$$_AuthEventLogOutCopyWithImpl(
      _$_AuthEventLogOut _value, $Res Function(_$_AuthEventLogOut) _then)
      : super(_value, (v) => _then(v as _$_AuthEventLogOut));

  @override
  _$_AuthEventLogOut get _value => super._value as _$_AuthEventLogOut;
}

/// @nodoc

class _$_AuthEventLogOut extends _AuthEventLogOut {
  const _$_AuthEventLogOut() : super._();

  @override
  String toString() {
    return 'AuthEvent.logOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthEventLogOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) logIn,
    required TResult Function(String email, String password) signUp,
    required TResult Function() logOut,
    required TResult Function(String email) forgotPass,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function(String email, String password)? signUp,
    TResult Function()? logOut,
    TResult Function(String email)? forgotPass,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function(String email, String password)? signUp,
    TResult Function()? logOut,
    TResult Function(String email)? forgotPass,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthEventLogIn value) logIn,
    required TResult Function(_AuthEventSignUp value) signUp,
    required TResult Function(_AuthEventLogOut value) logOut,
    required TResult Function(_AuthEventForgotPass value) forgotPass,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthEventLogIn value)? logIn,
    TResult Function(_AuthEventSignUp value)? signUp,
    TResult Function(_AuthEventLogOut value)? logOut,
    TResult Function(_AuthEventForgotPass value)? forgotPass,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEventLogIn value)? logIn,
    TResult Function(_AuthEventSignUp value)? signUp,
    TResult Function(_AuthEventLogOut value)? logOut,
    TResult Function(_AuthEventForgotPass value)? forgotPass,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class _AuthEventLogOut extends AuthEvent {
  const factory _AuthEventLogOut() = _$_AuthEventLogOut;
  const _AuthEventLogOut._() : super._();
}

/// @nodoc
abstract class _$$_AuthEventForgotPassCopyWith<$Res> {
  factory _$$_AuthEventForgotPassCopyWith(_$_AuthEventForgotPass value,
          $Res Function(_$_AuthEventForgotPass) then) =
      __$$_AuthEventForgotPassCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$$_AuthEventForgotPassCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_AuthEventForgotPassCopyWith<$Res> {
  __$$_AuthEventForgotPassCopyWithImpl(_$_AuthEventForgotPass _value,
      $Res Function(_$_AuthEventForgotPass) _then)
      : super(_value, (v) => _then(v as _$_AuthEventForgotPass));

  @override
  _$_AuthEventForgotPass get _value => super._value as _$_AuthEventForgotPass;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_$_AuthEventForgotPass(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthEventForgotPass extends _AuthEventForgotPass {
  const _$_AuthEventForgotPass({required this.email}) : super._();

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.forgotPass(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthEventForgotPass &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$$_AuthEventForgotPassCopyWith<_$_AuthEventForgotPass> get copyWith =>
      __$$_AuthEventForgotPassCopyWithImpl<_$_AuthEventForgotPass>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) logIn,
    required TResult Function(String email, String password) signUp,
    required TResult Function() logOut,
    required TResult Function(String email) forgotPass,
  }) {
    return forgotPass(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function(String email, String password)? signUp,
    TResult Function()? logOut,
    TResult Function(String email)? forgotPass,
  }) {
    return forgotPass?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function(String email, String password)? signUp,
    TResult Function()? logOut,
    TResult Function(String email)? forgotPass,
    required TResult orElse(),
  }) {
    if (forgotPass != null) {
      return forgotPass(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthEventLogIn value) logIn,
    required TResult Function(_AuthEventSignUp value) signUp,
    required TResult Function(_AuthEventLogOut value) logOut,
    required TResult Function(_AuthEventForgotPass value) forgotPass,
  }) {
    return forgotPass(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthEventLogIn value)? logIn,
    TResult Function(_AuthEventSignUp value)? signUp,
    TResult Function(_AuthEventLogOut value)? logOut,
    TResult Function(_AuthEventForgotPass value)? forgotPass,
  }) {
    return forgotPass?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEventLogIn value)? logIn,
    TResult Function(_AuthEventSignUp value)? signUp,
    TResult Function(_AuthEventLogOut value)? logOut,
    TResult Function(_AuthEventForgotPass value)? forgotPass,
    required TResult orElse(),
  }) {
    if (forgotPass != null) {
      return forgotPass(this);
    }
    return orElse();
  }
}

abstract class _AuthEventForgotPass extends AuthEvent {
  const factory _AuthEventForgotPass({required final String email}) =
      _$_AuthEventForgotPass;
  const _AuthEventForgotPass._() : super._();

  String get email => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_AuthEventForgotPassCopyWith<_$_AuthEventForgotPass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function(User user) authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(User user)? authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(User user)? authorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateNotAuthorized value) notAuthorized,
    required TResult Function(_AuthStateAuthorized value) authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(_AuthStateAuthorized value)? authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(_AuthStateAuthorized value)? authorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$$_AuthStateNotAuthorizedCopyWith<$Res> {
  factory _$$_AuthStateNotAuthorizedCopyWith(_$_AuthStateNotAuthorized value,
          $Res Function(_$_AuthStateNotAuthorized) then) =
      __$$_AuthStateNotAuthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthStateNotAuthorizedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_AuthStateNotAuthorizedCopyWith<$Res> {
  __$$_AuthStateNotAuthorizedCopyWithImpl(_$_AuthStateNotAuthorized _value,
      $Res Function(_$_AuthStateNotAuthorized) _then)
      : super(_value, (v) => _then(v as _$_AuthStateNotAuthorized));

  @override
  _$_AuthStateNotAuthorized get _value =>
      super._value as _$_AuthStateNotAuthorized;
}

/// @nodoc

class _$_AuthStateNotAuthorized extends _AuthStateNotAuthorized {
  const _$_AuthStateNotAuthorized() : super._();

  @override
  String toString() {
    return 'AuthState.notAuthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthStateNotAuthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function(User user) authorized,
  }) {
    return notAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(User user)? authorized,
  }) {
    return notAuthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(User user)? authorized,
    required TResult orElse(),
  }) {
    if (notAuthorized != null) {
      return notAuthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateNotAuthorized value) notAuthorized,
    required TResult Function(_AuthStateAuthorized value) authorized,
  }) {
    return notAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(_AuthStateAuthorized value)? authorized,
  }) {
    return notAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(_AuthStateAuthorized value)? authorized,
    required TResult orElse(),
  }) {
    if (notAuthorized != null) {
      return notAuthorized(this);
    }
    return orElse();
  }
}

abstract class _AuthStateNotAuthorized extends AuthState {
  const factory _AuthStateNotAuthorized() = _$_AuthStateNotAuthorized;
  const _AuthStateNotAuthorized._() : super._();
}

/// @nodoc
abstract class _$$_AuthStateAuthorizedCopyWith<$Res> {
  factory _$$_AuthStateAuthorizedCopyWith(_$_AuthStateAuthorized value,
          $Res Function(_$_AuthStateAuthorized) then) =
      __$$_AuthStateAuthorizedCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class __$$_AuthStateAuthorizedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_AuthStateAuthorizedCopyWith<$Res> {
  __$$_AuthStateAuthorizedCopyWithImpl(_$_AuthStateAuthorized _value,
      $Res Function(_$_AuthStateAuthorized) _then)
      : super(_value, (v) => _then(v as _$_AuthStateAuthorized));

  @override
  _$_AuthStateAuthorized get _value => super._value as _$_AuthStateAuthorized;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_AuthStateAuthorized(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_AuthStateAuthorized extends _AuthStateAuthorized {
  const _$_AuthStateAuthorized({required this.user}) : super._();

  @override
  final User user;

  @override
  String toString() {
    return 'AuthState.authorized(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthStateAuthorized &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_AuthStateAuthorizedCopyWith<_$_AuthStateAuthorized> get copyWith =>
      __$$_AuthStateAuthorizedCopyWithImpl<_$_AuthStateAuthorized>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function(User user) authorized,
  }) {
    return authorized(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(User user)? authorized,
  }) {
    return authorized?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(User user)? authorized,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateNotAuthorized value) notAuthorized,
    required TResult Function(_AuthStateAuthorized value) authorized,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(_AuthStateAuthorized value)? authorized,
  }) {
    return authorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(_AuthStateAuthorized value)? authorized,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }
}

abstract class _AuthStateAuthorized extends AuthState {
  const factory _AuthStateAuthorized({required final User user}) =
      _$_AuthStateAuthorized;
  const _AuthStateAuthorized._() : super._();

  User get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_AuthStateAuthorizedCopyWith<_$_AuthStateAuthorized> get copyWith =>
      throw _privateConstructorUsedError;
}
