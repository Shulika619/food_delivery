import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

abstract class IUserRepository {
  User? getCurrentUser();
  Future<void> updatePhotoURL(String url);
  Future<void> updateDisplayName(String name);
  Future<void> updateEmail(String email);
  Future<void> updatePassword(String password);
  Future<Map<dynamic, dynamic>?> fetchUserPhoneAndAddress();
  Future<void> updateUserPhone(String phone);
  Future<void> updateUserAddress(String address);
  Future<void> updateUserFavorite(String foodId);
  Stream<DatabaseEvent> fetchUserFavorite();
}

class UserRepository implements IUserRepository {
  final FirebaseAuth kFirebaseUserProvider = FirebaseAuth.instance;

  @override
  Future<Map<dynamic, dynamic>?> fetchUserPhoneAndAddress() async {
    final snapshot = await FirebaseDatabase.instance
        .ref("usersInfo/${FirebaseAuth.instance.currentUser?.uid}")
        .get();
    if (snapshot.exists) {
      return snapshot.value as Map<dynamic, dynamic>;
    }
    return null;
  }

  @override
  Future<void> updateUserPhone(String phone) async {
    await FirebaseDatabase.instance
        .ref("usersInfo/${FirebaseAuth.instance.currentUser?.uid}")
        .update({'phone': phone});
  }

  @override
  Future<void> updateUserAddress(String address) async {
    await FirebaseDatabase.instance
        .ref("usersInfo/${FirebaseAuth.instance.currentUser?.uid}")
        .update({'address': address});
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

  @override
  Stream<DatabaseEvent> fetchUserFavorite() {
    final favoriteStream = FirebaseDatabase.instance
        .ref("favorite/${FirebaseAuth.instance.currentUser?.uid}")
        .onValue;
    return favoriteStream;
  }

  @override
  Future<void> updateUserFavorite(String foodId) async {
    final ref = FirebaseDatabase.instance
        .ref("favorite/${FirebaseAuth.instance.currentUser?.uid}");
    final snapshot = await ref.child(foodId).get();
    if (snapshot.value == null) {
      await ref.update({foodId: true});
    } else {
      await ref.child(foodId).remove();
    }
  }
}
