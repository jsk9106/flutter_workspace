import 'package:core_theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tool_base_theme/gen/gen.dart';
import 'package:tool_base_theme/theme.dart';

class FThemeData extends ICoreThemeData {
  const FThemeData({
    required super.appBarTheme,
    required super.textTheme,
    required super.colorScheme,
    required super.navigationBarThemeData,
    required super.dialogTheme,
    required super.dividerTheme,
  });

  factory FThemeData.light() {
    return FThemeData(
      appBarTheme: FAppBarTheme.light(),
      textTheme: const FTextTheme(),
      colorScheme: FColorScheme.light(),
      navigationBarThemeData: FNavigationBarThemeData.light(),
      dialogTheme: FDialogTheme.light(),
      dividerTheme: FDividerTheme.light(),
    );
  }

  factory FThemeData.dark() {
    return FThemeData(
      appBarTheme: FAppBarTheme.dark(),
      textTheme: const FTextTheme(),
      colorScheme: FColorScheme.dark(),
      navigationBarThemeData: FNavigationBarThemeData.dark(),
      dialogTheme: FDialogTheme.dark(),
      dividerTheme: FDividerTheme.dark(),
    );
  }
}

class FAppBarTheme extends ICoreAppBarTheme {
  const FAppBarTheme({
    required super.systemOverlayStyle,
    required super.primaryColor,
    required super.backgroundColor,
    super.toolbarHeight = 44.0,
    super.titleSpacing = 0.0,
    super.centerTitle = true,
  });

  factory FAppBarTheme.light() {
    return const FAppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      primaryColor: ColorName.gray800,
      backgroundColor: ColorName.white,
    );
  }

  factory FAppBarTheme.dark() {
    return const FAppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.light,
      primaryColor: ColorName.gray200,
      backgroundColor: ColorName.darkBlack,
    );
  }
}

class FTextTheme extends ICoreTextTheme {
  const FTextTheme();
}

extension on FTextTheme {
  TextStyle defaultTextStyleForSize(double size) => TextStyle(
    package: kToolBaseThemePackageName,
    fontFamily: FontFamily.pretendard,
    fontSize: size,
    height: size / size,
  );
}

extension FTextThemeDefaultExtension on FTextTheme {
  // w600
  TextStyle get default20SemiBold => defaultTextStyleForSize(20.0).toSemiBold();

  TextStyle get default17SemiBold => defaultTextStyleForSize(17.0).toSemiBold();

  TextStyle get default16SemiBold => defaultTextStyleForSize(16.0).toSemiBold();

  TextStyle get default15SemiBold => defaultTextStyleForSize(15.0).toSemiBold();

  TextStyle get default14SemiBold => defaultTextStyleForSize(14.0).toSemiBold();

  // w500
  TextStyle get default17Medium => defaultTextStyleForSize(17.0).toMedium();

  TextStyle get default15Medium => defaultTextStyleForSize(15.0).toMedium();

  TextStyle get default14Medium => defaultTextStyleForSize(14.0).toMedium();

  TextStyle get default13Medium => defaultTextStyleForSize(13.0).toMedium();

  TextStyle get default12Medium => defaultTextStyleForSize(12.0).toMedium();

  // w400
  TextStyle get default22Regular => defaultTextStyleForSize(22.0).toRegular();

  TextStyle get default17Regular => defaultTextStyleForSize(17.0).toRegular();

  TextStyle get default16Regular => defaultTextStyleForSize(16.0).toRegular();

  TextStyle get default15Regular => defaultTextStyleForSize(15.0).toRegular();

  TextStyle get default14Regular => defaultTextStyleForSize(14.0).toRegular();

  TextStyle get default13Regular => defaultTextStyleForSize(13.0).toRegular();

  TextStyle get default12Regular => defaultTextStyleForSize(12.0).toRegular();

  TextStyle get default11Regular => defaultTextStyleForSize(11.0).toRegular();

  // w300
  TextStyle get default13Light => defaultTextStyleForSize(13.0).toLight();

  TextStyle get default11Light => defaultTextStyleForSize(11.0).toLight();
}

extension on FTextTheme {
  TextStyle poppinsTextStyleForSize(double size) =>
      defaultTextStyleForSize(size).copyWith(fontFamily: FontFamily.poppins);
}

extension FTextThemePoppinsExtension on FTextTheme {
  // w700
  TextStyle get poppins30Bold => poppinsTextStyleForSize(30.0).toBold();

  TextStyle get poppins24Bold => poppinsTextStyleForSize(24.0).toBold();

  TextStyle get poppins18Bold => poppinsTextStyleForSize(18.0).toBold();
}

extension on TextStyle {
  TextStyle toBold() => copyWith(fontWeight: FontWeight.w700);

  TextStyle toSemiBold() => copyWith(fontWeight: FontWeight.w600);

  TextStyle toMedium() => copyWith(fontWeight: FontWeight.w500);

  TextStyle toRegular() => copyWith(fontWeight: FontWeight.w400);

  TextStyle toLight() => copyWith(fontWeight: FontWeight.w300);
}

class FColorScheme extends ICoreColorScheme {
  FColorScheme({required super.brightness});

  factory FColorScheme.light() {
    return FColorScheme(brightness: Brightness.light);
  }

  factory FColorScheme.dark() {
    return FColorScheme(brightness: Brightness.dark);
  }

  bool get isDarkMode => brightness == Brightness.dark;

  Color get white => isDarkMode ? ColorName.white : ColorName.black;

  Color get black => isDarkMode ? ColorName.black : ColorName.white;

  Color get darkBlack => isDarkMode ? ColorName.darkBlack : ColorName.white;

  Color get lightBlack => isDarkMode ? ColorName.lightBlack : ColorName.white;

  Color get darkGray => isDarkMode ? ColorName.darkGray : ColorName.lightGray;

  Color get bg => isDarkMode ? ColorName.bg : ColorName.bg2;

  Color get bg2 => isDarkMode ? ColorName.bg2 : ColorName.bg;

  Color get gray100 => isDarkMode ? ColorName.gray100 : ColorName.gray900;

  Color get gray200 => isDarkMode ? ColorName.gray200 : ColorName.gray800;

  Color get gray300 => isDarkMode ? ColorName.gray300 : ColorName.gray700;

  Color get gray400 => isDarkMode ? ColorName.gray400 : ColorName.gray600;

  Color get gray500 => isDarkMode ? ColorName.gray500 : ColorName.gray500;

  Color get gray600 => isDarkMode ? ColorName.gray600 : ColorName.gray400;

  Color get gray700 => isDarkMode ? ColorName.gray700 : ColorName.gray300;

  Color get gray800 => isDarkMode ? ColorName.gray800 : ColorName.gray200;

  Color get gray900 => isDarkMode ? ColorName.gray900 : ColorName.gray100;
}

class FNavigationBarThemeData extends ICoreNavigationBarThemeData {
  const FNavigationBarThemeData({
    required super.backgroundColor,
    super.height = 58.0,
  });

  factory FNavigationBarThemeData.light() {
    return FNavigationBarThemeData(backgroundColor: ColorName.white);
  }

  factory FNavigationBarThemeData.dark() {
    return FNavigationBarThemeData(backgroundColor: ColorName.darkBlack);
  }
}

class FDialogTheme extends ICoreDialogTheme {
  const FDialogTheme({
    required super.titleTextStyle,
    required super.backgroundColor,
    required super.confirmTextStyle,
    required super.confirmBackgroundColor,
    required super.cancelTextStyle,
    required super.cancelBackgroundColor,
  });

  factory FDialogTheme.light() {
    const FTextTheme data = FTextTheme();
    return FDialogTheme(
      titleTextStyle: data.default15Medium.copyWith(color: ColorName.gray800),
      backgroundColor: ColorName.gray200,
      confirmTextStyle: data.default15SemiBold.copyWith(color: ColorName.black),
      confirmBackgroundColor: ColorName.gray400,
      cancelTextStyle: data.default15Medium.copyWith(color: ColorName.gray800),
      cancelBackgroundColor: ColorName.gray200,
    );
  }

  factory FDialogTheme.dark() {
    const FTextTheme data = FTextTheme();
    return FDialogTheme(
      titleTextStyle: data.default15Medium.copyWith(color: ColorName.gray200),
      backgroundColor: ColorName.gray800,
      confirmTextStyle: data.default16SemiBold.copyWith(color: ColorName.white),
      confirmBackgroundColor: ColorName.gray600,
      cancelTextStyle: data.default15Medium.copyWith(color: ColorName.gray200),
      cancelBackgroundColor: ColorName.gray800,
    );
  }
}

class FDividerTheme extends ICoreDividerTheme {
  const FDividerTheme({required super.color});

  factory FDividerTheme.light() {
    return const FDividerTheme(color: ColorName.gray200);
  }

  factory FDividerTheme.dark() {
    return const FDividerTheme(color: ColorName.gray800);
  }
}

extension FThemeDataExtension on BuildContext {
  FThemeData get themeData {
    return FTheme.of(this);
  }

  FAppBarTheme get appBarTheme {
    return themeData.appBarTheme as FAppBarTheme;
  }

  FTextTheme get textTheme {
    return themeData.textTheme as FTextTheme;
  }

  FColorScheme get colorScheme {
    return themeData.colorScheme as FColorScheme;
  }

  FNavigationBarThemeData get navigationBarThemeData {
    return themeData.navigationBarThemeData as FNavigationBarThemeData;
  }

  FDialogTheme get dialogTheme {
    return themeData.dialogTheme as FDialogTheme;
  }

  FDividerTheme get dividerTheme {
    return themeData.dividerTheme as FDividerTheme;
  }
}
