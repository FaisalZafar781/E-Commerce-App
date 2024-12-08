import 'package:af_store/features/personalization/controllers/address_controller.dart';
import 'package:af_store/features/shop/controllers/product/checkout_controller.dart';
import 'package:af_store/features/shop/controllers/product/variation_controller.dart';
import 'package:af_store/utils/helpers/network_manager.dart';
import 'package:get/get.dart';

class GeneralBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkManager());
    Get.put(VariationController());
    Get.put(AddressController());
    Get.put(CheckoutController());
  }
}

# touched on 2025-05-28T22:56:24.387278Z
# touched on 2025-05-28T23:02:53.449282Z