import 'package:af_store/data/repositories/product/product_repository.dart';
import 'package:af_store/features/shop/models/product_model.dart';
import 'package:af_store/utils/constants/enums.dart';
import 'package:af_store/utils/popups/loaders.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  static ProductController get instance => Get.find();

  final isLoading = false.obs;
  final productRepository = Get.put(ProductRepository());
  RxList<ProductModel> featuredProducts = <ProductModel>[].obs;

  @override
  void onInit() {
    fetchFeaturedProducts();
    super.onInit();
  }

  void fetchFeaturedProducts() async {
    try {
      //loader
      isLoading.value = true;

      //fetch products
      final products = await productRepository.getFeaturedProducts();

      //assign Products
      featuredProducts.assignAll(products);
    } catch (e) {
      FLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } finally {
      isLoading.value = false;
    }
  }

  Future<List<ProductModel>> fetchAllFeaturedProducts() async {
    try {
      //fetch products
      final products = await productRepository.getFeaturedProducts();
      return products;
    } catch (e) {
      FLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
      return [];
    }
  }

// get product price for single and variable products
  String getProductPrice(ProductModel product) {
    double smallestPrice = double.infinity;
    double largestPrice = 0.0;

    if (product.productType == ProductType.single.toString()) {
      return (product.salePrice > 0 ? product.salePrice : product.price)
          .toString();
    } else {
      //calculate samllest and largest price
      for (var variantion in product.productVariations!) {
        //determine the price to consider(sale price if available otherwise actual price)
        double priceToConsider = variantion.salePrice > 0.0
            ? variantion.salePrice
            : variantion.price;

        //update smallestr and largest price
        if (priceToConsider < smallestPrice) {
          smallestPrice = priceToConsider;
        }

        if (priceToConsider > largestPrice) {
          largestPrice = priceToConsider;
        }
      }

      //if both prices are equal, return the price
      if (smallestPrice.isEqual(largestPrice)) {
        return largestPrice.toString();
      } else {
        return '$smallestPrice - \$$largestPrice';
        // return largestPrice.toString();
      }
    }
  }

  String? calculateSalePercentage(double originalPrice, double? salePrice) {
    if (salePrice == null || salePrice <= 0.0) return null;
    if (originalPrice <= 0) return null;

    double percentage = ((originalPrice - salePrice) / originalPrice) * 100;
    return percentage.toStringAsFixed(0);
  }

  //check product status stock
  String getProductStockStatus(int stock) {
    return stock > 0 ? 'In Stock' : 'Out of Stock';
  }
}

# touched on 2025-05-28T22:53:39.320964Z
# touched on 2025-05-28T22:56:35.640970Z
# touched on 2025-05-28T22:56:50.920701Z
# touched on 2025-05-28T23:00:55.799185Z
# touched on 2025-05-28T23:02:09.807368Z
# touched on 2025-05-28T23:03:12.702828Z
# touched on 2025-05-28T23:03:55.995128Z