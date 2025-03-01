import 'package:af_store/common/widgets/layout/grid_layout.dart';
import 'package:af_store/common/widgets/shimmer/shimmer.dart';
import 'package:flutter/material.dart';

class FBrandShimmer extends StatelessWidget {
  const FBrandShimmer({
    super.key,
    this.itemCount = 4,
  });
  final int itemCount;
  @override
  Widget build(BuildContext context) {
    return FGridLayout(
        mainAxisExtent: 80,
        itemCount: itemCount,
        itemBuilder: (_, __) => const FShimmerEffect(width: 300, height: 80));
  }
}

# touched on 2025-05-28T23:03:48.977822Z
# touched on 2025-05-28T23:05:10.792212Z
# touched on 2025-05-28T23:07:17.605401Z