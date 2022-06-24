import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/src/features/home/data/model/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loading_indicator/loading_indicator.dart';

import '../../../profile/data/manage_user_api.dart';

part 'user_cubit.freezed.dart';

class UserCubit extends Cubit<UserState> implements ManageUserApi {
  UserCubit() : super(const UserState.initial());

  User? fireBaseUser;
  UserModel? user;
  UserModel get getUser => user!;

  Future<void> initData(User currentUser) async {
    // emit(const UserState.loading());
    fireBaseUser = currentUser;
    user = UserModel.fromFirebase(currentUser);
    emit(UserState.successfull(currentUser: user!));
  }

  @override
  Future<void> updateDisplayName(String name) async {
    emit(const UserState.loading());

    await fireBaseUser?.updateDisplayName(name);
    user = user!.copyWith(name: name);
    emit(UserState.successfull(currentUser: user!));
  }

  @override
  Future<void> updateEmail(String email) async {
    emit(const UserState.loading());
    await fireBaseUser?.updateEmail(email);
    user = user!.copyWith(email: email);
    emit(UserState.successfull(currentUser: user!));
  }

  @override
  Future<void> updatePassword(String password) async {
    emit(const UserState.loading());
    await fireBaseUser?.updatePassword(password);
    emit(UserState.successfull(currentUser: user!));
  }

  @override
  Future<void> updatePhotoURL(String url) async {
    emit(const UserState.loading());
    await fireBaseUser!.updatePhotoURL(url);
    user = user!.copyWith(img: url);
    emit(UserState.successfull(currentUser: user!));
  }
}

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = _UserStateInitial;
  const factory UserState.loading() = _UserStateLoading;
  const factory UserState.successfull({required UserModel currentUser}) =
      _UserStateSuccessfull;
  const factory UserState.error() = _UserStateError;
}
