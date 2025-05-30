import 'package:af_store/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:af_store/common/widgets/custom_shapes/curved_edges/curved_edges_widgets.dart';
import 'package:af_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class FPrimaryHeaderWidget extends StatelessWidget {
  const FPrimaryHeaderWidget({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return FCurvedEdges(
      child: Container(
        color: FColors.primaryColor,
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: FCircularContainer(
                backgroundColor: FColors.white.withOpacity(0.1),
              ),
            ),
            Positioned(
                top: 100,
                right: -300,
                child: FCircularContainer(
                  backgroundColor: FColors.white.withOpacity(0.1),
                )),
            child,
          ],
        ),
      ),
    );
  }
}

# touched on 2025-05-28T23:04:27.178910Z
# touched on 2025-05-28T23:05:59.975774Z