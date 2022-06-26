import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

@freezed
class UserModel with _$UserModel {
  const UserModel._();
  const factory UserModel({
    required String uid,
    required String email,
    String? name,
    String? img,
    String? phone,
    String? address,
  }) = _UserModel;

  static fromFirebase(User user) {
    final currentUser = UserModel(
        uid: user.uid,
        email: user.email!,
        name: user.displayName ?? 'Anonymous',
        img: user.photoURL ?? '');
    return currentUser;
  }
}
