import 'package:core_util/util.dart';
import 'package:flutter/material.dart';
import 'package:tool_fooponote_component/component.dart';
import 'package:tool_fooponote_theme/gen/gen.dart';
import 'package:tool_fooponote_theme/theme.dart';

class FooponoteCardButton extends StatelessWidget {
  final Widget icon;
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const FooponoteCardButton({
    super.key,
    required this.icon,
    required this.text,
    this.isSelected = false,
    required this.onTap,
  });

  factory FooponoteCardButton.like(
    BuildContext context, {
    int count = 0,
    bool isSelected = false,
    required VoidCallback onTap,
  }) {
    return FooponoteCardButton(
      icon: FooponoteIcon.favorite(color: isSelected ? ColorName.mainRed : context.colorScheme.gray500),
      text: count > 0 ? count.toDecimal() : '좋아요',
      isSelected: isSelected,
      onTap: onTap,
    );
  }

  factory FooponoteCardButton.comment(BuildContext context, {int count = 0, required VoidCallback onTap}) {
    return FooponoteCardButton(
      icon: FooponoteIcon.chatBubble(color: context.colorScheme.gray500),
      text: count > 0 ? count.toDecimal() : '댓글',
      onTap: onTap,
    );
  }

  factory FooponoteCardButton.view(BuildContext context, {int count = 0, required VoidCallback onTap}) {
    return FooponoteCardButton(
      icon: FooponoteIcon.visibility(color: context.colorScheme.gray500),
      text: count > 0 ? count.toDecimal() : '조회수',
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap.call(),
      behavior: HitTestBehavior.translucent,
      child: SizedBox(
        height: 42.0,
        child: ColoredBox(
          color: context.colorScheme.bg2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
              const SizedBox(width: 5.0),
              Flexible(
                child: Text(
                  text,
                  style: isSelected
                      ? context.textTheme.default14Medium.copyWith(color: ColorName.mainRed)
                      : context.textTheme.default14Regular.copyWith(color: context.colorScheme.gray400),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FooponoteWriteButton extends StatelessWidget {
  final VoidCallback onTap;

  const FooponoteWriteButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap.call(),
      behavior: HitTestBehavior.translucent,
      child: Container(
        height: 44.0,
        decoration: BoxDecoration(color: ColorName.writingButton, borderRadius: BorderRadius.circular(25.0)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(width: 15.0),
            FooponoteIcon.edit(color: ColorName.white),
            const SizedBox(width: 3.0),
            Flexible(
              child: Text('글쓰기', style: context.textTheme.default14Medium.copyWith(color: ColorName.white)),
            ),
            const SizedBox(width: 15.0),
          ],
        ),
      ),
    );
  }
}
