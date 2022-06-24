// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel currentUser) successfull,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel currentUser)? successfull,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel currentUser)? successfull,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserStateInitial value) initial,
    required TResult Function(_UserStateLoading value) loading,
    required TResult Function(_UserStateSuccessfull value) successfull,
    required TResult Function(_UserStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserStateInitial value)? initial,
    TResult Function(_UserStateLoading value)? loading,
    TResult Function(_UserStateSuccessfull value)? successfull,
    TResult Function(_UserStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserStateInitial value)? initial,
    TResult Function(_UserStateLoading value)? loading,
    TResult Function(_UserStateSuccessfull value)? successfull,
    TResult Function(_UserStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;
}

/// @nodoc
abstract class _$$_UserStateInitialCopyWith<$Res> {
  factory _$$_UserStateInitialCopyWith(
          _$_UserStateInitial value, $Res Function(_$_UserStateInitial) then) =
      __$$_UserStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserStateInitialCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res>
    implements _$$_UserStateInitialCopyWith<$Res> {
  __$$_UserStateInitialCopyWithImpl(
      _$_UserStateInitial _value, $Res Function(_$_UserStateInitial) _then)
      : super(_value, (v) => _then(v as _$_UserStateInitial));

  @override
  _$_UserStateInitial get _value => super._value as _$_UserStateInitial;
}

/// @nodoc

class _$_UserStateInitial implements _UserStateInitial {
  const _$_UserStateInitial();

  @override
  String toString() {
    return 'UserState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel currentUser) successfull,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel currentUser)? successfull,
    TResult Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel currentUser)? successfull,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserStateInitial value) initial,
    required TResult Function(_UserStateLoading value) loading,
    required TResult Function(_UserStateSuccessfull value) successfull,
    required TResult Function(_UserStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserStateInitial value)? initial,
    TResult Function(_UserStateLoading value)? loading,
    TResult Function(_UserStateSuccessfull value)? successfull,
    TResult Function(_UserStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserStateInitial value)? initial,
    TResult Function(_UserStateLoading value)? loading,
    TResult Function(_UserStateSuccessfull value)? successfull,
    TResult Function(_UserStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _UserStateInitial implements UserState {
  const factory _UserStateInitial() = _$_UserStateInitial;
}

/// @nodoc
abstract class _$$_UserStateLoadingCopyWith<$Res> {
  factory _$$_UserStateLoadingCopyWith(
          _$_UserStateLoading value, $Res Function(_$_UserStateLoading) then) =
      __$$_UserStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserStateLoadingCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res>
    implements _$$_UserStateLoadingCopyWith<$Res> {
  __$$_UserStateLoadingCopyWithImpl(
      _$_UserStateLoading _value, $Res Function(_$_UserStateLoading) _then)
      : super(_value, (v) => _then(v as _$_UserStateLoading));

  @override
  _$_UserStateLoading get _value => super._value as _$_UserStateLoading;
}

/// @nodoc

class _$_UserStateLoading implements _UserStateLoading {
  const _$_UserStateLoading();

  @override
  String toString() {
    return 'UserState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel currentUser) successfull,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel currentUser)? successfull,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel currentUser)? successfull,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserStateInitial value) initial,
    required TResult Function(_UserStateLoading value) loading,
    required TResult Function(_UserStateSuccessfull value) successfull,
    required TResult Function(_UserStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserStateInitial value)? initial,
    TResult Function(_UserStateLoading value)? loading,
    TResult Function(_UserStateSuccessfull value)? successfull,
    TResult Function(_UserStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserStateInitial value)? initial,
    TResult Function(_UserStateLoading value)? loading,
    TResult Function(_UserStateSuccessfull value)? successfull,
    TResult Function(_UserStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _UserStateLoading implements UserState {
  const factory _UserStateLoading() = _$_UserStateLoading;
}

/// @nodoc
abstract class _$$_UserStateSuccessfullCopyWith<$Res> {
  factory _$$_UserStateSuccessfullCopyWith(_$_UserStateSuccessfull value,
          $Res Function(_$_UserStateSuccessfull) then) =
      __$$_UserStateSuccessfullCopyWithImpl<$Res>;
  $Res call({UserModel currentUser});

  $UserModelCopyWith<$Res> get currentUser;
}

/// @nodoc
class __$$_UserStateSuccessfullCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res>
    implements _$$_UserStateSuccessfullCopyWith<$Res> {
  __$$_UserStateSuccessfullCopyWithImpl(_$_UserStateSuccessfull _value,
      $Res Function(_$_UserStateSuccessfull) _then)
      : super(_value, (v) => _then(v as _$_UserStateSuccessfull));

  @override
  _$_UserStateSuccessfull get _value => super._value as _$_UserStateSuccessfull;

  @override
  $Res call({
    Object? currentUser = freezed,
  }) {
    return _then(_$_UserStateSuccessfull(
      currentUser: currentUser == freezed
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  @override
  $UserModelCopyWith<$Res> get currentUser {
    return $UserModelCopyWith<$Res>(_value.currentUser, (value) {
      return _then(_value.copyWith(currentUser: value));
    });
  }
}

/// @nodoc

class _$_UserStateSuccessfull implements _UserStateSuccessfull {
  const _$_UserStateSuccessfull({required this.currentUser});

  @override
  final UserModel currentUser;

  @override
  String toString() {
    return 'UserState.successfull(currentUser: $currentUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserStateSuccessfull &&
            const DeepCollectionEquality()
                .equals(other.currentUser, currentUser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(currentUser));

  @JsonKey(ignore: true)
  @override
  _$$_UserStateSuccessfullCopyWith<_$_UserStateSuccessfull> get copyWith =>
      __$$_UserStateSuccessfullCopyWithImpl<_$_UserStateSuccessfull>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel currentUser) successfull,
    required TResult Function() error,
  }) {
    return successfull(currentUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel currentUser)? successfull,
    TResult Function()? error,
  }) {
    return successfull?.call(currentUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel currentUser)? successfull,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (successfull != null) {
      return successfull(currentUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserStateInitial value) initial,
    required TResult Function(_UserStateLoading value) loading,
    required TResult Function(_UserStateSuccessfull value) successfull,
    required TResult Function(_UserStateError value) error,
  }) {
    return successfull(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserStateInitial value)? initial,
    TResult Function(_UserStateLoading value)? loading,
    TResult Function(_UserStateSuccessfull value)? successfull,
    TResult Function(_UserStateError value)? error,
  }) {
    return successfull?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserStateInitial value)? initial,
    TResult Function(_UserStateLoading value)? loading,
    TResult Function(_UserStateSuccessfull value)? successfull,
    TResult Function(_UserStateError value)? error,
    required TResult orElse(),
  }) {
    if (successfull != null) {
      return successfull(this);
    }
    return orElse();
  }
}

abstract class _UserStateSuccessfull implements UserState {
  const factory _UserStateSuccessfull({required final UserModel currentUser}) =
      _$_UserStateSuccessfull;

  UserModel get currentUser => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_UserStateSuccessfullCopyWith<_$_UserStateSuccessfull> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UserStateErrorCopyWith<$Res> {
  factory _$$_UserStateErrorCopyWith(
          _$_UserStateError value, $Res Function(_$_UserStateError) then) =
      __$$_UserStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserStateErrorCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res>
    implements _$$_UserStateErrorCopyWith<$Res> {
  __$$_UserStateErrorCopyWithImpl(
      _$_UserStateError _value, $Res Function(_$_UserStateError) _then)
      : super(_value, (v) => _then(v as _$_UserStateError));

  @override
  _$_UserStateError get _value => super._value as _$_UserStateError;
}

/// @nodoc

class _$_UserStateError implements _UserStateError {
  const _$_UserStateError();

  @override
  String toString() {
    return 'UserState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel currentUser) successfull,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel currentUser)? successfull,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel currentUser)? successfull,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserStateInitial value) initial,
    required TResult Function(_UserStateLoading value) loading,
    required TResult Function(_UserStateSuccessfull value) successfull,
    required TResult Function(_UserStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserStateInitial value)? initial,
    TResult Function(_UserStateLoading value)? loading,
    TResult Function(_UserStateSuccessfull value)? successfull,
    TResult Function(_UserStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserStateInitial value)? initial,
    TResult Function(_UserStateLoading value)? loading,
    TResult Function(_UserStateSuccessfull value)? successfull,
    TResult Function(_UserStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _UserStateError implements UserState {
  const factory _UserStateError() = _$_UserStateError;
}
