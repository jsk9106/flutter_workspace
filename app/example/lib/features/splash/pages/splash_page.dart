import 'package:example/features/splash/view_models/splash_view_model.dart';
import 'package:example/route/route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:signals/signals_flutter.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final SplashViewModel _controller = SplashViewModel();

  final Duration _duration = const Duration(seconds: 2);

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _init(context);
    });
  }

  void _init(BuildContext context) {
    _controller.init();

    // 2초 후 홈으로 이동
    Future.delayed(_duration, () {
      context.goNamed(AppRoute.home.name);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Watch((_) {
          return AnimatedOpacity(
            opacity: _controller.isStart.value ? 1 : 0,
            duration: const Duration(milliseconds: 1000),
            child: const Text('Splash'),
          );
        }),
      ),
    );
  }
}
