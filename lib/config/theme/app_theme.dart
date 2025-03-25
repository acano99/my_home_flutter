import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

ThemeData appTheme(bool darkMode) => ThemeData(
  brightness: darkMode ? Brightness.dark : Brightness.light,
  cardTheme: CardTheme(elevation: 3),
  colorSchemeSeed: Colors.deepPurple,
);

class AppThemeCubit extends Cubit<bool> {
  AppThemeCubit({bool darkMode = false}) : super(darkMode);

  void toggleTheme() => emit(!state);
}
