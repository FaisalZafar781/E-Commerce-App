import 'dart:ui';

import 'package:flutter/material.dart';

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

# touched on 2025-05-28T23:02:35.655037Z
# touched on 2025-05-28T23:02:39.053700Z
# touched on 2025-05-28T23:03:52.443444Z