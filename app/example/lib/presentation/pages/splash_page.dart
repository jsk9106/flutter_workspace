import 'package:core_flutter_bloc/flutter_bloc.dart';
import 'package:example/presentation/blocs/%08splash_load_cubit.dart';
import 'package:example/route/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

//TODO: feature로 따로 빼기
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final Duration _duration = const Duration(seconds: 3);

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _init(context);
    });
  }

  void _init(BuildContext context) async {
    context.readFlowBloc<SplashLoadCubit>().load();
    // 3초 후 홈으로 이동
    Future.delayed(_duration, () {
      context.goNamed(AppRoute.home.name);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlowBlocBuilder<SplashLoadCubit, bool>.when(
          data: (context, state) {
            return AnimatedOpacity(
              opacity: state.data ? 1 : 0,
              duration: const Duration(milliseconds: 2000),
              child: const Text('Splash'),
            );
          },
        ),
      ),
    );
  }
}
