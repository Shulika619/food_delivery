import 'package:firebase_auth/firebase_auth.dart';

class ManageUserApi {
  static Future<void> updatePhotoURL(User user, String url) async {
    // https://pbs.twimg.com/media/DJi3pUDWsAIx9xQ.jpg
    await user
        .updatePhotoURL('https://pbs.twimg.com/media/DJi3pUDWsAIx9xQ.jpg');
  }

  static Future<void> updateDisplayName(User user, String name) async {
    await user.updateDisplayName('New Nama');
  }

  static Future<void> updateEmail(User user, String email) async {
    await user.updateEmail('test3@tes.tocm');
  }

  static Future<void> updatePassword(User user, String password) async {
    await user.updatePassword('123321');
  }
}
