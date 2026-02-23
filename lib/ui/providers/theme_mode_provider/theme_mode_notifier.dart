import 'package:flutter/material.dart';
import 'package:pokedex_3d/data/providers/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part "theme_mode_notifier.g.dart";

@riverpod
class AppThemeMode extends _$AppThemeMode {
  late final SharedPreferencesWithCache _prefs;
  final themeKey = "isLight";
  @override
  ThemeMode build() {
    _prefs = ref.read(sharedPreferences);
    final isLight = _prefs.getBool(themeKey);
    if (isLight == null) {
      return ThemeMode.light;
    }
    return isLight ? ThemeMode.dark : ThemeMode.light;
  }

  void toggleThemeModel() {
    state = state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    _prefs.setBool(themeKey, ThemeMode.light == state);
  }
}
