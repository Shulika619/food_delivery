import 'package:firebase_storage/firebase_storage.dart';

class DiscountRepository {
  final storageRef = FirebaseStorage.instance.ref().child("/shop/discount/");

  Future<List<String>> fetchDiscount() async {
    final listResult = await storageRef.listAll();
    List<String> listUrl = [];

    for (var item in listResult.items) {
      listUrl.add(await item.getDownloadURL());
    }
    return listUrl;
  }
}
