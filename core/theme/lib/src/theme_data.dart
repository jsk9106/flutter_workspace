import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

abstract class CoreThemeData {
  final CoreAppBarTheme appBarTheme;
  final CoreTextTheme textTheme;
  final CoreColorScheme colorScheme;
  final CoreNavigationBarThemeData navigationBarThemeData;
  final CoreDialogTheme dialogTheme;
  final CoreDividerTheme dividerTheme;

  const CoreThemeData({
    required this.appBarTheme,
    required this.textTheme,
    required this.colorScheme,
    required this.navigationBarThemeData,
    required this.dialogTheme,
    required this.dividerTheme,
  });
}

abstract class CoreAppBarTheme {
  final SystemUiOverlayStyle systemOverlayStyle;
  final Color primaryColor;
  final Color backgroundColor;
  final double toolbarHeight;
  final double titleSpacing;
  final bool centerTitle;

  const CoreAppBarTheme({
    required this.systemOverlayStyle,
    required this.primaryColor,
    required this.backgroundColor,
    required this.toolbarHeight,
    required this.titleSpacing,
    required this.centerTitle,
  });
}

abstract class CoreTextTheme {
  const CoreTextTheme();
}

abstract class CoreColorScheme {
  final Brightness brightness;

  const CoreColorScheme({required this.brightness});
}

abstract class CoreNavigationBarThemeData {
  final Color backgroundColor;
  final double height;

  const CoreNavigationBarThemeData({
    required this.backgroundColor,
    required this.height,
  });
}

abstract class CoreDialogTheme {
  final TextStyle titleTextStyle;
  final Color backgroundColor;
  final TextStyle confirmTextStyle;
  final Color confirmBackgroundColor;
  final TextStyle cancelTextStyle;
  final Color cancelBackgroundColor;

  const CoreDialogTheme({
    required this.titleTextStyle,
    required this.backgroundColor,
    required this.confirmTextStyle,
    required this.confirmBackgroundColor,
    required this.cancelTextStyle,
    required this.cancelBackgroundColor,
  });
}

abstract class CoreDividerTheme {
  final Color color;

  const CoreDividerTheme({required this.color});
}
