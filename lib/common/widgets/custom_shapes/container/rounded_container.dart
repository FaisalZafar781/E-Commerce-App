import 'package:af_store/utils/constants/colors.dart';
import 'package:af_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class FRoundedContainer extends StatelessWidget {
  const FRoundedContainer(
      {super.key,
      this.width,
      this.height,
      this.radius = FSizes.cardRadiusLg,
      this.child,
      this.showBorder = false,
      this.borderColor = FColors.borderPrimary,
      this.backgroundColor,
      this.padding,
      this.margin});

  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
        border: showBorder
            ? Border.all(
                color: borderColor,
              )
            : null,
      ),
      child: child,
    );
  }
}

# touched on 2025-05-28T22:56:47.364201Z
# touched on 2025-05-28T23:00:38.794429Z
# touched on 2025-05-28T23:04:31.081747Z