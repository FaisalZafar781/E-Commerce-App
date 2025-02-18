import 'package:af_store/features/shop/controllers/product/cart_controller.dart';
import 'package:af_store/features/shop/screens/cart/cart.dart';
import 'package:af_store/utils/constants/colors.dart';
import 'package:af_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FCartCounterIcon extends StatelessWidget {
  const FCartCounterIcon({
    super.key,
    required this.iconColor,
    this.counterbgColor,
    this.counterTextColor,
  });
  final Color iconColor;
  final Color? counterbgColor;
  final Color? counterTextColor;

  @override
  Widget build(BuildContext context) {
    //get insatance of cart controller
    final controller = Get.put(CartController());
    final dark = FHelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
          onPressed: () => Get.to(() => const CartScreen()),
          icon: Icon(
            Iconsax.shopping_bag,
            color: iconColor,
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: counterbgColor ?? (dark ? FColors.white : FColors.black),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Obx(
                () => Text(
                  controller.noOfCartItems.value.toString(),
                  style: Theme.of(context).textTheme.labelLarge!.apply(
                      color: counterTextColor ??
                          (dark ? FColors.black : FColors.white),
                      fontSizeFactor: 0.8),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

# touched on 2025-05-28T22:55:55.219384Z
# touched on 2025-05-28T22:56:17.126784Z
# touched on 2025-05-28T23:01:07.135582Z
# touched on 2025-05-28T23:02:28.415268Z
# touched on 2025-05-28T23:04:15.741798Z
# touched on 2025-05-28T23:04:19.748194Z
# touched on 2025-05-28T23:05:06.877491Z
# touched on 2025-05-28T23:05:24.805885Z
# touched on 2025-05-28T23:06:47.727927Z