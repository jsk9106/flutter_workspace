import 'dart:async';

import 'package:core_flutter_bloc/flutter_bloc.dart';
import 'package:core_util/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fooponote/page/splash.dart';
import 'package:presentation/presentation.dart';
import 'package:tool_fooponote_component/component.dart';
import 'package:tool_fooponote_theme/theme.dart';
import 'package:feature_auth/fooponote.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  StreamSubscription<HomeTabEvent>? _homeTabEventSubscription;

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    // Todo: 자동 로그인 체크 및 다음 페이지 정의
    WidgetsBinding.instance.addPostFrameCallback((_) {
      SplashPage.show(context);
      _subscribeHomeTabEvent();
    });
    super.initState();
  }

  @override
  void dispose() {
    _unsubscribeHomeTabEvent();
    super.dispose();
  }

  void _subscribeHomeTabEvent() {
    _homeTabEventSubscription = Modular.get<EventBus>()
        .on<HomeTabEvent>()
        .listen((event) {
          context.readFlowBloc<HomeTabCubit>().change(index: event.index);
        });
  }

  void _unsubscribeHomeTabEvent() {
    _homeTabEventSubscription?.cancel();
    _homeTabEventSubscription = null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.darkBlack,
      body: FlowBlocBuilder<HomeTabCubit, int>.when(
        data: (context, state) => CoreTabSwitchingView(
          currentTabIndex: state.data,
          tabCount: FooponoteNavigationType.values.length,
          tabBuilder: (context, index) {
            final Widget screen = switch (index) {
              0 => IAuthRoutes.findScreen(Uri(path: AuthRoute.login.path)),
              1 => const SizedBox.shrink(),
              2 => const SizedBox.shrink(),
              _ => const SizedBox.shrink(),
            };
            return screen;
          },
        ),
      ),
      bottomNavigationBar: FlowBlocBuilder<HomeTabCubit, int>.when(
        data: (context, state) => FooponoteBottomNavigationBar(
          items: FooponoteNavigationType.values
              .map((e) => FooponoteBottomNavigationItem(type: e))
              .toList(),
          currentIndex: state.data,
          onTap: (index) =>
              context.readFlowBloc<HomeTabCubit>().change(index: index),
        ),
      ),
      floatingActionButton: FlowBlocBuilder<HomeTabCubit, int>.when(
        data: (context, state) {
          switch (state.data) {
            case 0:
            case 1:
              return FooponoteWriteButton(onTap: () => () {});
            default:
              return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
