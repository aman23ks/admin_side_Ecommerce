import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';

class BrandService {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  String ref = 'brands';
  void createBrand(String name) {
    var id = Uuid();
    String BrandId = id.v1();

    _firestore.collection(ref).doc(BrandId).set({'brand': name});
  }

  Future<List<DocumentSnapshot>> getBrands() =>
      _firestore.collection(ref).get().then((snaps) {
        return snaps.docs;
      });
}
