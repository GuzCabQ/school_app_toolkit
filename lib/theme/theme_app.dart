import 'package:flutter/material.dart';

class ThemeApp {
  static ThemeData getTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.tealAccent, brightness: Brightness.dark),
    useMaterial3: true,
  );
}
