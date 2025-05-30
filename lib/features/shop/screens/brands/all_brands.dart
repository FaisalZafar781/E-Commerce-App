import 'package:af_store/common/widgets/appbar/appbar.dart';
import 'package:af_store/common/widgets/layout/grid_layout.dart';
import 'package:af_store/common/widgets/shimmer/brand_shimmer.dart';
import 'package:af_store/common/widgets/text/section_heading.dart';
import 'package:af_store/features/shop/controllers/product/brand_controller.dart';
import 'package:af_store/features/shop/screens/brands/brand_products.dart';
import 'package:af_store/features/shop/screens/store/widgets/brands_card.dart';
import 'package:af_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final controller = BrandController.instance;
    return Scaffold(
        appBar: const FAppBar(
          title: Text('Brands'),
          showBackArrow: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(
              FSizes.defaultSpace,
            ),
            child: Column(
              children: [
                //heading
                const FSectionHeading(
                  title: 'Brands',
                  showActionButtion: false,
                ),
                const SizedBox(height: FSizes.spaceBtwItems),

                //brands
                Obx(() {
                  if (controller.isLoading.value) return const FBrandShimmer();

                  if (controller.allBrands.isEmpty) {
                    return Center(
                      child: Text(
                        'No Brands Found',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .apply(color: Colors.white),
                      ),
                    );
                  }

                  return FGridLayout(
                    mainAxisExtent: 80,
                    itemCount: controller.allBrands.length,
                    itemBuilder: (_, index) {
                      final brand = controller.allBrands[index];
                      return FBrandCards(
                        showBorder: true,
                        brand: brand,
                        onTap: () => Get.to(() => BrandProducts(
                              brand: brand,
                            )),
                      );
                    },
                  );
                })
              ],
            ),
          ),
        ));
  }
}

# touched on 2025-05-28T22:55:51.336192Z
# touched on 2025-05-28T22:56:20.942431Z
# touched on 2025-05-28T23:00:55.800543Z
# touched on 2025-05-28T23:01:22.027327Z
# touched on 2025-05-28T23:02:49.949688Z
# touched on 2025-05-28T23:03:27.607016Z
# touched on 2025-05-28T23:04:03.733208Z