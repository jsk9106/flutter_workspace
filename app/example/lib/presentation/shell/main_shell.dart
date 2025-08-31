import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tool_component/component.dart';

class MainShell extends StatelessWidget {
  const MainShell({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  /// 바텀 네비게이션 탭
  void _onTapBottomNavigation(int index) {
    navigationShell.goBranch(index);
  }

  @override
  Widget build(BuildContext context) {
    return FScaffold(
      context,
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
