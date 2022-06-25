import 'package:firebase_auth/firebase_auth.dart';

import '../../../auth/bloc/auth/auth_bloc.dart';

abstract class InterfaceUserRepository {
  User? getCurrentUser();

  Future<void> updatePhotoURL(String url);

  Future<void> updateDisplayName(String name);

  Future<void> updateEmail(String email);

  Future<void> updatePassword(String password);
}

final FirebaseAuth kFirebaseUserProvider = FirebaseAuth.instance;

class UserRepository implements InterfaceUserRepository {
  @override
  User? getCurrentUser() {
    return kFirebaseUserProvider.currentUser;
  }

  @override
  Future<void> updateDisplayName(String name) async {
    await kFirebaseUserProvider.currentUser?.updateDisplayName(name);
  }

  @override
  Future<void> updateEmail(String email) async {
    await kFirebaseUserProvider.currentUser?.updateEmail(email);
  }

  @override
  Future<void> updatePassword(String password) async {
    await kFirebaseUserProvider.currentUser?.updatePassword(password);
  }

  @override
  Future<void> updatePhotoURL(String url) async {
    await kFirebaseUserProvider.currentUser?.updatePhotoURL(url);
  }
}
