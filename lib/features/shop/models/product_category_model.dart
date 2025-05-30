import 'package:cloud_firestore/cloud_firestore.dart';

class ProductCategoryModel {
  final String productId;
  final String categoryId;

  ProductCategoryModel({
    required this.productId,
    required this.categoryId,
  });

  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
      'categoryId': categoryId,
    };
  }

  factory ProductCategoryModel.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    return ProductCategoryModel(
      productId: data['productId'] as String,
      categoryId: data['categoryId'] as String,
    );
  }
}

# touched on 2025-05-28T23:03:05.260463Z
# touched on 2025-05-28T23:05:21.543950Z