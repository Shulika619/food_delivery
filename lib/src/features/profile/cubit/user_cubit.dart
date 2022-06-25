import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/model/user_model.dart';
import '../data/repositories/user_repository.dart';

part 'user_cubit.freezed.dart';

class UserProfileCubit extends Cubit<UserProfileState> {
  UserRepository userRepository = UserRepository();
  UserModel? _user;
  UserModel get getUser => _user!;

  UserProfileCubit() : super(const UserProfileState.initial());

  Future<void> initData() async {
    // emit(const UserState.loading());
    _user = UserModel.fromFirebase(userRepository.getCurrentUser()!);
    emit(UserProfileState.successfull(currentUser: _user!));
  }

  Future<void> updateDisplayName(String name) async {
    emit(const UserProfileState.loading());
    await userRepository.updateDisplayName(name);
    _user = _user!.copyWith(name: name);
    emit(UserProfileState.successfull(currentUser: _user!));
  }

  Future<void> updateEmail(String email) async {
    emit(const UserProfileState.loading());
    await userRepository.updateEmail(email);
    _user = _user!.copyWith(email: email);
    emit(UserProfileState.successfull(currentUser: _user!));
  }

  Future<void> updatePassword(String password) async {
    emit(const UserProfileState.loading());
    await userRepository.updatePassword(password);
    emit(UserProfileState.successfull(currentUser: _user!));
  }

  Future<void> updatePhotoURL(String url) async {
    emit(const UserProfileState.loading());
    await userRepository.updatePhotoURL(url);
    _user = _user!.copyWith(img: url);
    emit(UserProfileState.successfull(currentUser: _user!));
  }
}

@freezed
class UserProfileState with _$UserProfileState {
  const factory UserProfileState.initial() = _UserStateInitial;
  const factory UserProfileState.loading() = _UserStateLoading;
  const factory UserProfileState.successfull({required UserModel currentUser}) =
      _UserStateSuccessfull;
  const factory UserProfileState.error() = _UserStateError;
}
