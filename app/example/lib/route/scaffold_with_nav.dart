import 'package:example/route/route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tool_base_component/gen/assets.gen.dart';
import 'package:tool_base_theme/theme.dart';

Map<int, String> navIndexEndPointMapper = {
  0: AppRoute.home.name,
  1: AppRoute.my.name,
};

class NavItem {
  final String icon;
  final String activeIcon;
  final String label;

  const NavItem({
    required this.icon,
    required this.activeIcon,
    required this.label,
  });
}

class ScaffoldWithNav extends StatefulWidget {
  final StatefulNavigationShell navigationShell;

  const ScaffoldWithNav({super.key, required this.navigationShell});

  @override
  State<ScaffoldWithNav> createState() => _ScaffoldWithNavState();
}

class _ScaffoldWithNavState extends State<ScaffoldWithNav> {
  final List<NavItem> navItemList = [
    const NavItem(
      icon: Assets.home,
      activeIcon: Assets.homeFill,
      label: 'Home',
    ),
    const NavItem(icon: Assets.my, activeIcon: Assets.myFill, label: 'My'),
  ];

  /// 바텀 네비게이션 탭
  void _onTapBottomNavigation(int index) {
    final hasAlreadyOnBranch = index == widget.navigationShell.currentIndex;
    if (hasAlreadyOnBranch) {
      context.goNamed(navIndexEndPointMapper[index]!);
    } else {
      widget.navigationShell.goBranch(index);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.navigationShell,
      backgroundColor: FColors.of(context).backgroundNormalN,
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: FColors.of(context).lineAssistive,
                width: 1,
              ),
            ),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: _onTapBottomNavigation,
            currentIndex: widget.navigationShell.currentIndex,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            backgroundColor: FColors.of(context).backgroundNormalN,
            elevation: 0,
            selectedLabelStyle: FTextStyles.bodyS.copyWith(
              color: FColors.of(context).labelNormal,
            ),
            unselectedLabelStyle: FTextStyles.bodyS.r.copyWith(
              color: FColors.of(context).labelNormal,
            ),
            selectedItemColor: FColors.of(context).labelNormal,
            unselectedItemColor: FColors.of(context).labelNormal,
            items: List.generate(navItemList.length, (index) {
              final NavItem navItem = navItemList[index];

              return BottomNavigationBarItem(
                icon: _iconPadding(
                  child: FSvg.asset(
                    navItem.icon,
                    color: FColors.of(context).labelNormal,
                  ),
                ),
                activeIcon: _iconPadding(
                  child: FSvg.asset(
                    navItem.activeIcon,
                    color: FColors.of(context).labelNormal,
                  ),
                ),
                label: navItem.label,
              );
            }),
          ),
        ),
      ),
    );
  }

  Widget _iconPadding({required Widget child}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4, top: 2),
      child: child,
    );
  }
}
