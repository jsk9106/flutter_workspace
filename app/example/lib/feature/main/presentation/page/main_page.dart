import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tool_component/component.dart';
import 'package:tool_theme/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  /// 바텀 네비게이션 탭
  void _onTapBottomNavigation(int index) {
    navigationShell.goBranch(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.darkBlack,
      body: navigationShell,
      bottomNavigationBar: FBottomNavigationBar(
        items: List.generate(
          FNavigationType.values.length,
          (index) => FBottomNavigationItem(type: FNavigationType.values[index]),
        ),
        currentIndex: navigationShell.currentIndex,
        onTap: _onTapBottomNavigation,
      ),
    );
  }
}
