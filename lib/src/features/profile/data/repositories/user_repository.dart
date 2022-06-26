import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

abstract class InterfaceUserRepository {
  User? getCurrentUser();

  Future<void> updatePhotoURL(String url);

  Future<void> updateDisplayName(String name);

  Future<void> updateEmail(String email);

  Future<void> updatePassword(String password);
  Future<void> updateUserPhone(String phone);
  Future<void> updateUserAddress(String address);
}

class UserRepository implements InterfaceUserRepository {
  final FirebaseAuth kFirebaseUserProvider = FirebaseAuth.instance;

  DatabaseReference refUserInfo = FirebaseDatabase.instance
      .ref("usersInfo/${FirebaseAuth.instance.currentUser?.uid}");

  @override
  Future<void> updateUserPhone(String phone) async {
    await refUserInfo.update({'phone': phone});
  }

  @override
  Future<void> updateUserAddress(String address) async {
    await refUserInfo.update({'address': address});
  }

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
