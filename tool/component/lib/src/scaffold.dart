import 'package:flutter/material.dart';
import 'package:tool_theme/theme.dart';

class FScaffold extends Scaffold {
  FScaffold(
    BuildContext context, {
    super.key,
    required super.body,
    super.appBar,
    super.bottomNavigationBar,
    super.floatingActionButton,
    super.floatingActionButtonLocation,
    super.floatingActionButtonAnimator,
    super.drawer,
    super.endDrawer,
    super.bottomSheet,
    super.resizeToAvoidBottomInset,
    Color? backgroundColor,
  }) : super(backgroundColor: backgroundColor ?? context.colorScheme.darkBlack);
}
