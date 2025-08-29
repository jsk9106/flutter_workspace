import 'package:core_theme/src/theme_data.dart';
import 'package:flutter/widgets.dart';

abstract class CoreTheme extends InheritedWidget {
  final CoreThemeData themeData;

  const CoreTheme({super.key, required this.themeData, required super.child});

  @override
  bool updateShouldNotify(covariant CoreTheme oldWidget) {
    return themeData != oldWidget.themeData;
  }
}
