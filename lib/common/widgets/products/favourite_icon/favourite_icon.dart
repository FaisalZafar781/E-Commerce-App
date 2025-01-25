import 'package:af_store/common/widgets/icons/circular_icon.dart';
import 'package:af_store/features/shop/controllers/product/favourite_controller.dart';
import 'package:af_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FFavouriteIcon extends StatelessWidget {
  const FFavouriteIcon({
    super.key,
    required this.productId,
  });
  final String productId;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FavouriteController());
    return Obx(
      () => FCircularIcon(
        icon: controller.isFavorite(productId) ? Iconsax.heart5 : Iconsax.heart,
        color: controller.isFavorite(productId) ? FColors.error : null,
        onPressed: () => controller.toggleFavoriteProduct(productId),
      ),
    );
  }
}

# touched on 2025-05-28T22:56:13.260685Z
# touched on 2025-05-28T23:03:45.472635Z
# touched on 2025-05-28T23:05:31.800912Z