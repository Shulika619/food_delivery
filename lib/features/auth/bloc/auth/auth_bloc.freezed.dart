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
    required TResult Function() logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function()? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function()? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthEventLogIn value) logIn,
    required TResult Function(_AuthEventLogOut value) logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthEventLogIn value)? logIn,
    TResult Function(_AuthEventLogOut value)? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEventLogIn value)? logIn,
    TResult Function(_AuthEventLogOut value)? logOut,
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
    required TResult Function() logOut,
  }) {
    return logIn(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function()? logOut,
  }) {
    return logIn?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function()? logOut,
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
    required TResult Function(_AuthEventLogOut value) logOut,
  }) {
    return logIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthEventLogIn value)? logIn,
    TResult Function(_AuthEventLogOut value)? logOut,
  }) {
    return logIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEventLogIn value)? logIn,
    TResult Function(_AuthEventLogOut value)? logOut,
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
    required TResult Function() logOut,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function()? logOut,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function()? logOut,
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
    required TResult Function(_AuthEventLogOut value) logOut,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthEventLogIn value)? logIn,
    TResult Function(_AuthEventLogOut value)? logOut,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEventLogIn value)? logIn,
    TResult Function(_AuthEventLogOut value)? logOut,
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
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function() loadInProgress,
    required TResult Function() authorized,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? loadInProgress,
    TResult Function()? authorized,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? loadInProgress,
    TResult Function()? authorized,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateNotAuthorized value) notAuthorized,
    required TResult Function(_AuthStateLoadInProgress value) loadInProgress,
    required TResult Function(_AuthStateAuthorized value) authorized,
    required TResult Function(_AuthStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(_AuthStateLoadInProgress value)? loadInProgress,
    TResult Function(_AuthStateAuthorized value)? authorized,
    TResult Function(_AuthStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(_AuthStateLoadInProgress value)? loadInProgress,
    TResult Function(_AuthStateAuthorized value)? authorized,
    TResult Function(_AuthStateError value)? error,
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
    required TResult Function() loadInProgress,
    required TResult Function() authorized,
    required TResult Function(String message) error,
  }) {
    return notAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? loadInProgress,
    TResult Function()? authorized,
    TResult Function(String message)? error,
  }) {
    return notAuthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? loadInProgress,
    TResult Function()? authorized,
    TResult Function(String message)? error,
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
    required TResult Function(_AuthStateLoadInProgress value) loadInProgress,
    required TResult Function(_AuthStateAuthorized value) authorized,
    required TResult Function(_AuthStateError value) error,
  }) {
    return notAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(_AuthStateLoadInProgress value)? loadInProgress,
    TResult Function(_AuthStateAuthorized value)? authorized,
    TResult Function(_AuthStateError value)? error,
  }) {
    return notAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(_AuthStateLoadInProgress value)? loadInProgress,
    TResult Function(_AuthStateAuthorized value)? authorized,
    TResult Function(_AuthStateError value)? error,
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
abstract class _$$_AuthStateLoadInProgressCopyWith<$Res> {
  factory _$$_AuthStateLoadInProgressCopyWith(_$_AuthStateLoadInProgress value,
          $Res Function(_$_AuthStateLoadInProgress) then) =
      __$$_AuthStateLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthStateLoadInProgressCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_AuthStateLoadInProgressCopyWith<$Res> {
  __$$_AuthStateLoadInProgressCopyWithImpl(_$_AuthStateLoadInProgress _value,
      $Res Function(_$_AuthStateLoadInProgress) _then)
      : super(_value, (v) => _then(v as _$_AuthStateLoadInProgress));

  @override
  _$_AuthStateLoadInProgress get _value =>
      super._value as _$_AuthStateLoadInProgress;
}

/// @nodoc

class _$_AuthStateLoadInProgress extends _AuthStateLoadInProgress {
  const _$_AuthStateLoadInProgress() : super._();

  @override
  String toString() {
    return 'AuthState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthStateLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function() loadInProgress,
    required TResult Function() authorized,
    required TResult Function(String message) error,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? loadInProgress,
    TResult Function()? authorized,
    TResult Function(String message)? error,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? loadInProgress,
    TResult Function()? authorized,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateNotAuthorized value) notAuthorized,
    required TResult Function(_AuthStateLoadInProgress value) loadInProgress,
    required TResult Function(_AuthStateAuthorized value) authorized,
    required TResult Function(_AuthStateError value) error,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(_AuthStateLoadInProgress value)? loadInProgress,
    TResult Function(_AuthStateAuthorized value)? authorized,
    TResult Function(_AuthStateError value)? error,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(_AuthStateLoadInProgress value)? loadInProgress,
    TResult Function(_AuthStateAuthorized value)? authorized,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _AuthStateLoadInProgress extends AuthState {
  const factory _AuthStateLoadInProgress() = _$_AuthStateLoadInProgress;
  const _AuthStateLoadInProgress._() : super._();
}

/// @nodoc
abstract class _$$_AuthStateAuthorizedCopyWith<$Res> {
  factory _$$_AuthStateAuthorizedCopyWith(_$_AuthStateAuthorized value,
          $Res Function(_$_AuthStateAuthorized) then) =
      __$$_AuthStateAuthorizedCopyWithImpl<$Res>;
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
}

/// @nodoc

class _$_AuthStateAuthorized extends _AuthStateAuthorized {
  const _$_AuthStateAuthorized() : super._();

  @override
  String toString() {
    return 'AuthState.authorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthStateAuthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function() loadInProgress,
    required TResult Function() authorized,
    required TResult Function(String message) error,
  }) {
    return authorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? loadInProgress,
    TResult Function()? authorized,
    TResult Function(String message)? error,
  }) {
    return authorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? loadInProgress,
    TResult Function()? authorized,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateNotAuthorized value) notAuthorized,
    required TResult Function(_AuthStateLoadInProgress value) loadInProgress,
    required TResult Function(_AuthStateAuthorized value) authorized,
    required TResult Function(_AuthStateError value) error,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(_AuthStateLoadInProgress value)? loadInProgress,
    TResult Function(_AuthStateAuthorized value)? authorized,
    TResult Function(_AuthStateError value)? error,
  }) {
    return authorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(_AuthStateLoadInProgress value)? loadInProgress,
    TResult Function(_AuthStateAuthorized value)? authorized,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }
}

abstract class _AuthStateAuthorized extends AuthState {
  const factory _AuthStateAuthorized() = _$_AuthStateAuthorized;
  const _AuthStateAuthorized._() : super._();
}

/// @nodoc
abstract class _$$_AuthStateErrorCopyWith<$Res> {
  factory _$$_AuthStateErrorCopyWith(
          _$_AuthStateError value, $Res Function(_$_AuthStateError) then) =
      __$$_AuthStateErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$_AuthStateErrorCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_AuthStateErrorCopyWith<$Res> {
  __$$_AuthStateErrorCopyWithImpl(
      _$_AuthStateError _value, $Res Function(_$_AuthStateError) _then)
      : super(_value, (v) => _then(v as _$_AuthStateError));

  @override
  _$_AuthStateError get _value => super._value as _$_AuthStateError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_AuthStateError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthStateError extends _AuthStateError {
  const _$_AuthStateError({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthStateError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_AuthStateErrorCopyWith<_$_AuthStateError> get copyWith =>
      __$$_AuthStateErrorCopyWithImpl<_$_AuthStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function() loadInProgress,
    required TResult Function() authorized,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? loadInProgress,
    TResult Function()? authorized,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? loadInProgress,
    TResult Function()? authorized,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateNotAuthorized value) notAuthorized,
    required TResult Function(_AuthStateLoadInProgress value) loadInProgress,
    required TResult Function(_AuthStateAuthorized value) authorized,
    required TResult Function(_AuthStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(_AuthStateLoadInProgress value)? loadInProgress,
    TResult Function(_AuthStateAuthorized value)? authorized,
    TResult Function(_AuthStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(_AuthStateLoadInProgress value)? loadInProgress,
    TResult Function(_AuthStateAuthorized value)? authorized,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AuthStateError extends AuthState {
  const factory _AuthStateError({required final String message}) =
      _$_AuthStateError;
  const _AuthStateError._() : super._();

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_AuthStateErrorCopyWith<_$_AuthStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
