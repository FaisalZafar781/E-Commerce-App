import 'package:af_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class FCircularContainer extends StatelessWidget {
  const FCircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding = 0,
    this.child,
    this.backgroundColor = FColors.white,
    this.margin,
  });

  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final EdgeInsets? margin;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}

# touched on 2025-05-28T23:05:45.888282Z
# touched on 2025-05-28T23:05:53.324847Z