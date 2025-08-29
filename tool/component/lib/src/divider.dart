import 'package:flutter/material.dart';
import 'package:tool_theme/theme.dart';

class FDivider extends StatelessWidget {
  final double width;
  final double height;
  final Color? color;

  const FDivider({
    super.key,
    required this.width,
    required this.height,
    this.color,
  });

  factory FDivider.vertical({double thickness = 1.0, Color? color}) {
    return FDivider(width: thickness, height: double.infinity, color: color);
  }

  factory FDivider.horizontal({double thickness = 1.0, Color? color}) {
    return FDivider(width: double.infinity, height: thickness, color: color);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ColoredBox(color: color ?? context.dividerTheme.color),
    );
  }
}
