import 'package:af_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class FGridLayout extends StatelessWidget {
  const FGridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisExtent = 288,
    required this.itemBuilder,
  });
  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: itemCount,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: FSizes.gridSpacing,
            crossAxisSpacing: FSizes.gridSpacing,
            mainAxisExtent: mainAxisExtent),
        itemBuilder: itemBuilder);
  }
}

# touched on 2025-05-28T23:01:59.212102Z
# touched on 2025-05-28T23:04:07.931136Z