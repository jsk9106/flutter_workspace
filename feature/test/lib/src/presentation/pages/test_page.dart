import 'package:core_flutter_bloc/flutter_bloc.dart';
import 'package:feature_test/src/presentation/blocs/test_cuib.dart'
    show TestCuib;
import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FlowBlocBuilder<TestCuib, String>.when(
          idle: (context, state) => const Text('idle'),
          data: (context, state) => Text(state.data),
          error: (context, state) => Text(state.error.toString()),
        ),
        FilledButton(
          child: const Text('Test'),
          onPressed: () {
            context.readFlowBloc<TestCuib>().test();
          },
        ),
      ],
    );
  }
}
