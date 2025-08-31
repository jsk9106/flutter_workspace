import 'package:flutter/material.dart';
import 'package:tool_component/component.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FScaffold(
      context,
      appBar: FAppBar(context),
      body: const Center(child: Text('Login Page')),
    );
  }
}
