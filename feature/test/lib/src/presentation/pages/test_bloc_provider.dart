import 'package:core_flutter_bloc/flutter_bloc.dart';
import 'package:feature_test/src/di/injectable.dart';
import 'package:feature_test/src/presentation/blocs/test_cuib.dart';
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
