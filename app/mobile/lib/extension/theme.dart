import 'package:core_model/theme.dart';
import 'package:flutter/material.dart' show ThemeMode;

extension ThemeModeX on Theme {
  ThemeMode get mode {
    switch (this) {
      case Theme.system:
        return ThemeMode.system;
      case Theme.light:
        return ThemeMode.light;
      case Theme.dark:
        return ThemeMode.dark;
    }
  }
}
