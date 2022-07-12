import 'package:firebase_auth/firebase_auth.dart';

abstract class IAuthRepository {
  Stream<User?> get authStateChange;
  User? getCurrentUser();
  Future<void> signInWithEmailAndPassword(String email, String password);
  Future<void> signOut();
  Future<void> sendPasswordResetEmail(String email);
  Future<void> createUserWithEmailAndPassword(String email, String password);
}

class FireBaseAuthRepository implements IAuthRepository {
  final FirebaseAuth kFirebaseAuthProvider = FirebaseAuth.instance;

  @override
  Stream<User?> get authStateChange => kFirebaseAuthProvider.authStateChanges();

  @override
  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    await kFirebaseAuthProvider.createUserWithEmailAndPassword(
        email: email, password: password);
  }

  @override
  User? getCurrentUser() {
    return kFirebaseAuthProvider.currentUser;
  }

  @override
  Future<void> sendPasswordResetEmail(String email) async {
    await kFirebaseAuthProvider.sendPasswordResetEmail(email: email);
  }

  @override
  Future<void> signInWithEmailAndPassword(String email, String password) async {
    await kFirebaseAuthProvider.signInWithEmailAndPassword(
        email: email, password: password);
  }

  @override
  Future<void> signOut() async {
    await kFirebaseAuthProvider.signOut();
  }
}
