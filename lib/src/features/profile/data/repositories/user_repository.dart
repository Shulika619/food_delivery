import 'package:firebase_auth/firebase_auth.dart';

abstract class InterfaceUserRepository {
  User? getCurrentUser();

  Future<void> updatePhotoURL(String url);

  Future<void> updateDisplayName(String name);

  Future<void> updateEmail(String email);

  Future<void> updatePassword(String password);
}

final User? kFirebaseUserProvider = FirebaseAuth.instance.currentUser;

class UserRepository implements InterfaceUserRepository {
  @override
  User? getCurrentUser() {
    return kFirebaseUserProvider;
  }

  @override
  Future<void> updateDisplayName(String name) async {
    await kFirebaseUserProvider?.updateDisplayName(name);
  }

  @override
  Future<void> updateEmail(String email) async {
    await kFirebaseUserProvider?.updateEmail(email);
  }

  @override
  Future<void> updatePassword(String password) async {
    await kFirebaseUserProvider?.updatePassword(password);
  }

  @override
  Future<void> updatePhotoURL(String url) async {
    await kFirebaseUserProvider!.updatePhotoURL(url);
  }
}
