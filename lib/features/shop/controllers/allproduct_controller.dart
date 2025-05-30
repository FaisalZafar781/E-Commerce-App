import 'package:af_store/data/repositories/product/product_repository.dart';
import 'package:af_store/features/shop/models/product_model.dart';
import 'package:af_store/utils/popups/loaders.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

class AllProductsController extends GetxController {
  static AllProductsController get instance => Get.find();

  final repository = ProductRepository.instance;
  final RxString selectedSortOption = 'Name'.obs;
  final RxList<ProductModel> products = <ProductModel>[].obs;

  final Logger logger = Logger();

  Future<List<ProductModel>> fetchProductByQuery(Query? query) async {
    try {
      if (query == null) return [];

      final products = await repository.fetchProductByQuery(query);

      return products;
    } catch (e) {
      FLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
    return [];
  }

  void sortProducts(String sortOption) {
    selectedSortOption.value = sortOption;

    switch (sortOption) {
      case 'Name':
        products.sort((a, b) => a.title.compareTo(b.title));
        break;

      case 'Higher Price':
        products.sort((a, b) => b.price.compareTo(a.price));
        break;

      case 'Lower Price':
        products.sort((a, b) => a.price.compareTo(b.price));

        break;

      //  case 'Newest':
      // products.sort((a, b) => b.date!.compareTo(a.date!));
      // break;

      case 'Sale':
        products.sort((a, b) {
          if (b.salePrice > 0) {
            return b.salePrice.compareTo(a.salePrice);
          } else if (a.salePrice > 0) {
            return -1;
          } else {
            return 1;
          }
        });
        break;
      default:
        products.sort((a, b) => a.title.compareTo(b.title));
    }
  }

  void assignProducts(List<ProductModel> products) {
    this.products.assignAll(products);
    sortProducts('Name');
  }
}

# touched on 2025-05-28T22:56:17.125972Z
# touched on 2025-05-28T23:01:18.143099Z
# touched on 2025-05-28T23:03:27.607406Z
# touched on 2025-05-28T23:03:52.444889Z