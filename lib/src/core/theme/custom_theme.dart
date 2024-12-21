import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CustomTheme {
  ThemeData get theme {
    final themeData = ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.red,
      ),
    );

    return themeData;
  }
}
