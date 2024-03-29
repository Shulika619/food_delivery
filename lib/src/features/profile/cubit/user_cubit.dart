import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/flutter_toast_warning.dart';
import '../data/model/user_model.dart';
import '../data/repositories/user_repository.dart';

part 'user_cubit.freezed.dart';

class UserProfileCubit extends Cubit<UserProfileState> {
  final UserRepository repository;
  UserModel? _user;
  UserModel get getUser => _user!;

  UserProfileCubit({required this.repository})
      : super(const UserProfileState.initial());

  Future<void> initData() async {
    emit(const UserProfileState.loading());
    _user = await UserModel.fromFirebase(repository.getCurrentUser()!);
    final db = await repository.fetchUserPhoneAndAddress();
    if (db != null) {
      _user = _user?.copyWith(phone: db['phone'], address: db['address']);
    }
    repository.fetchUserFavorite().listen((event) {
      if (event.snapshot.value != null) {
        List<String?> favoriteList =
            event.snapshot.children.map((item) => item.key).toList();
        _user = _user?.copyWith(favoriteList: favoriteList);
      } else {
        _user = _user?.copyWith(favoriteList: []);
      }
    });
    emit(UserProfileState.successfull(currentUser: _user!));
  }

  bool isFoodFavorite(String foodId) {
    final listFavorite = _user?.favoriteList ?? [];
    return listFavorite.any((element) => element == foodId);
  }

  Future<void> updateUserFavorite(String foodId) async {
    try {
      emit(const UserProfileState.loading());
      await repository.updateUserFavorite(foodId);
      // _user = _user.copyWith(favoriteList: foodId);
    } on FirebaseException catch (e) {
      FlutterToastWarning.showToast(
          message: e.message.toString(), isError: true);
    }
    emit(UserProfileState.successfull(currentUser: _user!));
  }

  Future<void> updatePhone(String phone) async {
    try {
      emit(const UserProfileState.loading());
      await repository.updateUserPhone(phone);
      _user = _user!.copyWith(phone: phone);
      FlutterToastWarning.showToast(message: 'Successfully', isError: false);
    } on FirebaseException catch (e) {
      FlutterToastWarning.showToast(
          message: e.message.toString(), isError: true);
    }
    emit(UserProfileState.successfull(currentUser: _user!));
  }

  Future<void> updateAddress(String address) async {
    try {
      emit(const UserProfileState.loading());
      await repository.updateUserAddress(address);
      _user = _user!.copyWith(address: address);
      FlutterToastWarning.showToast(message: 'Successfully', isError: false);
    } on FirebaseException catch (e) {
      FlutterToastWarning.showToast(
          message: e.message.toString(), isError: true);
    }
    emit(UserProfileState.successfull(currentUser: _user!));
  }

  Future<void> updateDisplayName(String name) async {
    try {
      emit(const UserProfileState.loading());
      await repository.updateDisplayName(name);
      _user = _user!.copyWith(name: name);
      FlutterToastWarning.showToast(message: 'Successfully', isError: false);
    } on FirebaseAuthException catch (e) {
      FlutterToastWarning.showToast(
          message: e.message.toString(), isError: true);
    }
    emit(UserProfileState.successfull(currentUser: _user!));
  }

  Future<void> updateEmail(String email) async {
    try {
      emit(const UserProfileState.loading());
      await repository.updateEmail(email);
      _user = _user!.copyWith(email: email);
      FlutterToastWarning.showToast(message: 'Successfully', isError: false);
    } on FirebaseAuthException catch (e) {
      FlutterToastWarning.showToast(
          message: e.message.toString(), isError: true);
    }
    emit(UserProfileState.successfull(currentUser: _user!));
  }

  Future<void> updatePassword(String password) async {
    try {
      emit(const UserProfileState.loading());
      await repository.updatePassword(password);
      FlutterToastWarning.showToast(message: 'Successfully', isError: false);
    } on FirebaseAuthException catch (e) {
      FlutterToastWarning.showToast(
          message: e.message.toString(), isError: true);
    }
    emit(UserProfileState.successfull(currentUser: _user!));
  }

  Future<void> updatePhotoURL(String url) async {
    try {
      emit(const UserProfileState.loading());
      await repository.updatePhotoURL(url);
      _user = _user!.copyWith(img: url);
      FlutterToastWarning.showToast(message: 'Successfully', isError: false);
    } on FirebaseAuthException catch (e) {
      FlutterToastWarning.showToast(
          message: e.message.toString(), isError: true);
    }
    emit(UserProfileState.successfull(currentUser: _user!));
  }
}

@freezed
class UserProfileState with _$UserProfileState {
  const factory UserProfileState.initial() = _UserStateInitial;
  const factory UserProfileState.loading() = _UserStateLoading;
  const factory UserProfileState.successfull({required UserModel currentUser}) =
      _UserStateSuccessfull;
}
