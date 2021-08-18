import 'package:flutter/material.dart';
import 'package:flutter_theme_management/theme/application/theme_application.dart';

class ThemeDark extends ApplicationTheme {
  static ThemeDark? _instance;
  static ThemeDark get instance {
    _instance ??= ThemeDark._init();
    return _instance!;
  }

  ThemeDark._init();

  @override
  ThemeData? get theme => ThemeData(primaryColor: Colors.black);
}
