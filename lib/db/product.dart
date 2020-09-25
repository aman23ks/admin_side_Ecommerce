import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';

class ProductService {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  String ref = 'products';
  void uploadProduct({
    String productName,
    String brand,
    String category,
    List sizes,
    List images,
    double price,
    int quantity,
    bool featured,
    bool onSale,
  }) {
    var id = Uuid();
    String productId = id.v1();

    _firestore.collection(ref).doc(productId).set({
      'name': productName,
      'id': productId,
      'brand': brand,
      'category': category,
      'quantity': quantity,
      'price': price,
      'images': images,
      'Sizes': sizes,
      'featured': featured,
      'sale': onSale,
    });
  }
}
