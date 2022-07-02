import 'package:firebase_database/firebase_database.dart';

abstract class IUserDbRepository {
  // Future<Character> getCharacter();
}

// favotire/$uid { ... }
// orders/$uid { .... }

class UserDbRepository implements IUserDbRepository {
  // FirebaseDatabase database = FirebaseDatabase.instance;
  // DatabaseReference ref = FirebaseDatabase.instance.ref();
// await refUserInfo.set({'address': address, 'phone':''});   // добавить все знач
// await refUserInfo.child('address').set(address);   // добавить указ знач
// await refUserInfo.update({'address': address,});   // только обновить выбр знач

  DatabaseReference refUserFavorite =
      FirebaseDatabase.instance.ref("usersFavorite/123");
  DatabaseReference refUserOrder =
      FirebaseDatabase.instance.ref("usersOrders/123");

  // Future<UserInfoDb> fetchUserInfoDb() async {}

  // Future<UserFavorite> fetchUserFavoriteDb() async {}
  // Future<void> editUserFavoriteDb() async {}

  // Future<UserOrders> saveUserOrdersDb() async {}
  // Future<UserOrders> fetchUserOrdersDb() async {}

}
