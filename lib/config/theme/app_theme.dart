import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

@riverpod
ThemeData app_theme({bool darkTheme = false}) => ThemeData(
  cardTheme: CardTheme(elevation: 3),
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.deepPurple,
    brightness: darkTheme ? Brightness.dark : Brightness.light,
  ),
);
