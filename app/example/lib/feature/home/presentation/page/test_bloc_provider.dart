import 'package:core_flutter_bloc/flutter_bloc.dart';
import 'package:example/di/injectable.dart';
import 'package:example/feature/home/presentation/bloc/test_cuib.dart';
import 'package:flutter/material.dart';

class TestBlocProvider extends StatelessWidget {
  const TestBlocProvider({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return FlowBlocProvider<TestCuib>(
      create: (context) => sl<TestCuib>(),
      child: child,
    );
  }
}
