import 'package:af_store/common/widgets/shimmer/shimmer.dart';
import 'package:af_store/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';

class FListTileShimmer extends StatelessWidget {
  const FListTileShimmer({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            FShimmerEffect(
              width: 100,
              height: 50,
              radius: 50,
            ),
            SizedBox(width: FSizes.spaceBtwItems),
            Column(
              children: [
                FShimmerEffect(width: 100, height: 15),
                SizedBox(height: FSizes.spaceBtwItems / 2),
                FShimmerEffect(width: 80, height: 12)
              ],
            )
          ],
        )
      ],
    );
  }
}

# touched on 2025-05-28T23:03:55.994286Z
# touched on 2025-05-28T23:04:27.184195Z