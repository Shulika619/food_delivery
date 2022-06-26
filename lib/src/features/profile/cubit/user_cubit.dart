import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/errors/flutter_toast_warning.dart';
import '../data/model/user_model.dart';
import '../data/repositories/user_repository.dart';

part 'user_cubit.freezed.dart';

class UserProfileCubit extends Cubit<UserProfileState> {
  UserRepository userRepository = UserRepository();
  UserModel? _user;
  UserModel get getUser => _user!;

  UserProfileCubit() : super(const UserProfileState.initial());

  Future<void> initData() async {
    emit(const UserProfileState.loading());
    _user = await UserModel.fromFirebase(userRepository.getCurrentUser()!);
    final db = await userRepository.fetchUserPhoneAndAddress();
    _user =
        _user?.copyWith(phone: db['phone'] ?? '', address: db['address'] ?? '');
    print(db);
    print(db['phone']);
    print(db['address']);
    emit(UserProfileState.successfull(currentUser: _user!));
  }

  Future<void> updatePhone(String phone) async {
    try {
      emit(const UserProfileState.loading());
      await userRepository.updateUserPhone(phone);
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
      await userRepository.updateUserAddress(address);
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
      await userRepository.updateDisplayName(name);
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
      await userRepository.updateEmail(email);
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
      await userRepository.updatePassword(password);
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
      await userRepository.updatePhotoURL(url);
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
