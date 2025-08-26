import 'package:flutter/material.dart';
import 'package:tool_base_component/component.dart';
import 'package:tool_base_component/gen/assets.gen.dart';
import 'package:tool_base_theme/theme.dart';

/// 앱 바
class FAppBar extends AppBar {
  FAppBar(
    BuildContext context, {
    super.key,
    super.leading,
    super.title,
    super.automaticallyImplyLeading = false,
    super.actions,
    super.leadingWidth,
    super.elevation = 0,
    super.surfaceTintColor,
    double? titleSpacing,
    double? toolbarHeight,
    Color? backgroundColor,
    bool? centerTitle,
    super.bottom,
  }) : super(
         scrolledUnderElevation: 0,
         titleSpacing: titleSpacing ?? context.appBarTheme.titleSpacing,
         backgroundColor:
             backgroundColor ?? context.appBarTheme.backgroundColor,
         centerTitle: centerTitle ?? context.appBarTheme.centerTitle,
         toolbarHeight: toolbarHeight ?? context.appBarTheme.toolbarHeight,
         systemOverlayStyle: context.appBarTheme.systemOverlayStyle,
       );

  /// 뒤로가기 버튼이 추가된 AppBar
  factory FAppBar.back(
    BuildContext context, {
    String? titleText,
    Widget? title,
    Function()? onBack,
    List<Widget>? actions,
    Color? backgroundColor,
  }) => FAppBar(
    context,
    title:
        title ??
        (titleText != null
            ? FAppBarTitle.simple(context, text: titleText)
            : null),
    backgroundColor: backgroundColor,
    leading: FAppBarIconButton(
      icon: FIcon(path: Assets.images.svgs.icArrowBack, size: 24),
      onTap: onBack,
    ),
    actions: actions,
  );

  /// 닫기 버튼이 추가된 AppBar
  factory FAppBar.close(
    BuildContext context, {
    String? titleText,
    Widget? title,
    List<Widget>? actions,
    GestureTapCallback? onClose,
    Color? backgroundColor,
    Color? surfaceTintColor,
  }) => FAppBar(
    context,
    title:
        title ??
        (titleText != null
            ? FAppBarTitle.simple(context, text: titleText)
            : null),
    backgroundColor: backgroundColor,
    surfaceTintColor: surfaceTintColor,
    leading: FAppBarIconButton(
      icon: FIcon(path: Assets.images.svgs.icCancel, size: 24),
      onTap: onClose,
    ),
    actions: actions,
  );
}

/// 앱 바 타이틀
class FAppBarTitle extends StatelessWidget {
  final Widget title;
  final Widget? leading;
  final Widget? trailing;

  const FAppBarTitle({
    super.key,
    required this.title,
    this.leading,
    this.trailing,
  });

  factory FAppBarTitle.simple(BuildContext context, {required String text}) {
    return FAppBarTitle(
      title: Text(
        text,
        style: context.textTheme.default17Regular.copyWith(
          color: context.appBarTheme.primaryColor,
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  factory FAppBarTitle.logo(BuildContext context) {
    return FAppBarTitle(
      title: Text(
        'Base',
        style: context.textTheme.poppins18Bold.copyWith(
          color: context.colorScheme.gray600,
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (leading != null) leading!,
        Flexible(child: title),
        if (trailing != null) trailing!,
      ],
    );
  }
}

/// 앱 바 텍스트 버튼
class FAppBarTextButton extends StatelessWidget {
  final String text;
  final EdgeInsets padding;
  final Alignment alignment;
  final Color? color;
  final VoidCallback onTap;

  const FAppBarTextButton({
    super.key,
    required this.text,
    this.padding = EdgeInsets.zero,
    this.alignment = Alignment.center,
    this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: SizedBox(
        width: 56.0,
        child: Align(
          alignment: alignment,
          child: Padding(
            padding: padding,
            child: Text(
              text,
              style: context.textTheme.default15Medium.copyWith(color: color),
            ),
          ),
        ),
      ),
    );
  }
}

/// 앱 바 아이콘 버튼
class FAppBarIconButton extends StatelessWidget {
  final Widget icon;
  final VoidCallback? onTap;

  const FAppBarIconButton({super.key, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => onTap?.call(),
      child: SizedBox(width: 40, child: Center(child: icon)),
    );
  }
}
