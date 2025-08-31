import 'package:core_util/util.dart';
import 'package:feature_test/test.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FilledButton(
          child: const Text('Go To Test'),
          onPressed: () {
            context.goNamed(TestRoute.test.name);
          },
        ),
      ],
    );
  }
}
