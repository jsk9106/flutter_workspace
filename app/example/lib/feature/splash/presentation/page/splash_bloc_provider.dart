import 'package:core_flutter_bloc/flutter_bloc.dart';
import 'package:example/di/injectable.dart';
import 'package:example/feature/splash/presentation/cubit/init_cubit.dart';
import 'package:flutter/material.dart';

class SplashBlocProvider extends StatelessWidget {
  const SplashBlocProvider({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return FlowBlocProvider<SplashLoadCubit>(
      create: (context) => sl<SplashLoadCubit>(),
      child: child,
    );
  }
}
