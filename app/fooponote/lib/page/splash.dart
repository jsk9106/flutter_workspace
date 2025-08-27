import 'package:core_flutter_bloc/flutter_bloc.dart';
import 'package:core_util/util.dart';
import 'package:di/di.dart';
import 'package:flutter/material.dart';
import 'package:presentation/presentation.dart';
import 'package:tool_base_component/component.dart';
import 'package:tool_base_theme/gen/colors.gen.dart';
import 'package:tool_base_theme/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();

  static Future<void> show(BuildContext context) {
    return showGeneralDialog<void>(
      context: context,
      pageBuilder: (context, animation, secondaryAnimation) =>
          const SplashBlocProvider(child: SplashPage()),
      barrierColor: Colors.transparent,
      transitionDuration: Duration.zero,
    );
  }
}

class _SplashPageState extends State<SplashPage> {
  final ValueNotifier<double> _opacityNotifier = ValueNotifier<double>(1.0);

  @override
  void initState() {
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   context.readFlowBloc<AdCubit>().load();
    // });
    _hideAfterDelay(const Duration(seconds: 3));

    super.initState();
  }

  @override
  void dispose() {
    _opacityNotifier.dispose();
    super.dispose();
  }

  Future<void> _hideAfterDelay(Duration delay) async {
    await Future.delayed(delay);
    _updateOpacity(0.0);
  }

  void _updateOpacity(double value) {
    if (_opacityNotifier.value == value) return;
    _opacityNotifier.value = value;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<double>(
      valueListenable: _opacityNotifier,
      builder: (context, value, child) => AnimatedOpacity(
        opacity: value,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        onEnd: () {
          if (value == 0.0) {
            Modular.to.pop();
          }
        },
        child: child,
      ),
      child: Scaffold(
        backgroundColor: ColorName.splashBackground,
        body: SizedBox.expand(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FooponoteIcon.logo(size: 46.0),
                  const SizedBox(height: 14.0),
                  Text(
                    'Clind',
                    style: context.textTheme.poppins24Bold.copyWith(
                      color: ColorName.white,
                    ),
                  ),
                ],
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Stack(
                  children: [
                    FlowBlocConsumer<AdCubit, String>.when(
                      data: (context, state) =>
                          Image.network(state.data, fit: BoxFit.cover),
                      onData: (context, state) =>
                          _hideAfterDelay(const Duration(seconds: 3)),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 48.0,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            stops: [0, 0.5],
                            colors: [
                              ColorName.splashBackground,
                              ColorName.splashBackground.withOpacity(0.0),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
