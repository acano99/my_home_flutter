import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_theme.g.dart';

@riverpod
class AppTheme extends _$AppTheme {
  @override
  ThemeData build() {
    return ThemeData(
      brightness: Brightness.dark,
      cardTheme: CardTheme(elevation: 3),
      colorSchemeSeed: Colors.deepPurple,
    );
  }

  void switchTheme(bool darkMode) {
    state = state.copyWith(
      brightness: darkMode ? Brightness.dark : Brightness.light,
    );
  }
}
