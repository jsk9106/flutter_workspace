import 'package:core_util/util.dart';
import 'package:flutter/material.dart';
import 'package:tool_base_component/component.dart';
import 'package:tool_base_theme/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.darkBlack,
      body: CoreTabSwitchingView(
          currentTabIndex: 0,
          tabCount: 3,
          tabBuilder: (context, index) {
            final Widget screen = switch (index) {
              0 => const SizedBox.shrink(),
              1 => const SizedBox.shrink(),
              2 => const SizedBox.shrink(),
              _ => const SizedBox.shrink(),
            };
            return screen;
          },
        ),
      bottomNavigationBar: FBottomNavigationBar(
        items: List.generate(FNavigationType.values.length, (index) => FBottomNavigationItem(type: FNavigationType.values[index])),
          // items: FNavigationType.values
          //     .map((e) => FBottomNavigationItem(type: e))
          //     .toList(),
          currentIndex: 0,
          onTap: (index) =>
              context.readFlowBloc<HomeTabCubit>().change(index: index),
        ),
      floatingActionButton: FlowBlocBuilder<HomeTabCubit, int>.when(
        data: (context, state) {
          switch (state.data) {
            case 0:
            case 1:
              return FWriteButton(onTap: () => () {});
            default:
              return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}