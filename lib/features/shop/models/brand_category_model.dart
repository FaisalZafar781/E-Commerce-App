import 'package:cloud_firestore/cloud_firestore.dart';

class BrandCategoryModel {
  final String brandId;
  final String categoryId;

  BrandCategoryModel({
    required this.brandId,
    required this.categoryId,
  });

  Map<String, dynamic> toJson() {
    return {
      'brandId': brandId,
      'categoryId': categoryId,
    };
  }

  factory BrandCategoryModel.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    return BrandCategoryModel(
      brandId: data['brandId'] as String,
      categoryId: data['categoryId'] as String,
    );
  }
}

# touched on 2025-05-28T22:55:58.929180Z
# touched on 2025-05-28T23:06:03.414668Z