import 'package:af_store/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:flutter/material.dart';

class FCurvedEdges extends StatelessWidget {
  const FCurvedEdges({
    super.key,
    this.child,
  });
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: FCustomCurvedEdges(),
      child: child,
    );
  }
}

# touched on 2025-05-28T23:00:34.755586Z
# touched on 2025-05-28T23:02:42.963847Z
# touched on 2025-05-28T23:04:41.481859Z