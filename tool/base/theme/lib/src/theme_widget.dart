import 'package:core_theme/theme.dart';
import 'package:flutter/widgets.dart';
import 'package:tool_base_theme/theme.dart';

class FTheme extends ICoreTheme {
  const FTheme({super.key, required FThemeData themeData, required super.child})
    : super(themeData: themeData);

  static FThemeData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<FTheme>()!.themeData
        as FThemeData;
  }
}
