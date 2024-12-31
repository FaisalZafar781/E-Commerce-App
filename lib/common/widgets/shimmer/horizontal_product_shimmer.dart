import 'package:af_store/common/widgets/shimmer/shimmer.dart';
import 'package:af_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class FHorizontalProductShimmer extends StatelessWidget {
  const FHorizontalProductShimmer({
    super.key,
    this.itemCount = 4,
  });
  final int itemCount;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: FSizes.spaceBtwSections),
      height: 120,
      child: ListView.separated(
        itemCount: itemCount,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (_, __) =>
            const SizedBox(width: FSizes.spaceBtwItems),
        itemBuilder: (_, __) => const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            FShimmerEffect(width: 120, height: 120),
            SizedBox(width: FSizes.spaceBtwItems),

            //text
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: FSizes.spaceBtwItems / 2,
                ),
                FShimmerEffect(width: 160, height: 15),
                SizedBox(
                  height: FSizes.spaceBtwItems / 2,
                ),
                FShimmerEffect(width: 110, height: 15),
                SizedBox(
                  height: FSizes.spaceBtwItems / 2,
                ),
                FShimmerEffect(width: 80, height: 15),
                Spacer(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

# touched on 2025-05-28T23:00:55.800033Z
# touched on 2025-05-28T23:01:18.142881Z
# touched on 2025-05-28T23:02:49.951421Z
# touched on 2025-05-28T23:03:52.442659Z
# touched on 2025-05-28T23:03:59.747998Z