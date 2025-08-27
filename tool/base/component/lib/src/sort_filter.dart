import 'package:core_util/util.dart';
import 'package:flutter/material.dart';
import 'package:tool_base_component/component.dart';
import 'package:tool_base_theme/theme.dart';

class FSortFilter extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const FSortFilter({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap.call(),
      behavior: HitTestBehavior.translucent,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FIcon.expandMore(color: context.colorScheme.gray400),
          const SizedBox(width: 3.0),
          Flexible(
            child: Text(
              text,
              style: context.textTheme.default13Medium.copyWith(
                color: context.colorScheme.gray400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FLoadingSortFilter extends StatelessWidget {
  const FLoadingSortFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return CoreShimmer(
      baseColor: context.colorScheme.gray800,
      highlightColor: context.colorScheme.gray900,
      child: Container(
        width: 60.0,
        height: 18.0,
        decoration: BoxDecoration(
          color: context.colorScheme.gray800,
          borderRadius: BorderRadius.circular(4.0),
        ),
      ),
    );
  }
}
