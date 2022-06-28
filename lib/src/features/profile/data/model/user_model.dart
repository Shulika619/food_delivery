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
      img: user.photoURL ??
          'https://firebasestorage.googleapis.com/v0/b/food-delivery-41e0e.appspot.com/o/shop%2Fusers%2Fno_avatar.png?alt=media&token=1a6727e4-835c-4171-be21-f0238dc08508',
    );
    return currentUser;
  }
}
