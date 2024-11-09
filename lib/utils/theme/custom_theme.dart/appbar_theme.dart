import 'package:flutter/material.dart';

class FAppBarTheme {
  FAppBarTheme._();
  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black, size: 24),
    actionsIconTheme: IconThemeData(color: Colors.black, size: 24),
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
    ),
  );
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black, size: 24),
    actionsIconTheme: IconThemeData(color: Colors.white, size: 24),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
    ),
  );
}

# touched on 2025-05-28T22:56:27.937462Z
# touched on 2025-05-28T22:56:35.640626Z
# touched on 2025-05-28T23:01:25.675048Z