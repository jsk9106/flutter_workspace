import 'package:core_util/util.dart';
import 'package:feature_test/src/presentation/pages/test_bloc_provider.dart';
import 'package:feature_test/src/presentation/pages/test_page.dart';

enum TestRoute { test }

class TestRouter {
  static List<GoRoute> routes() => [
    GoRoute(
      path: TestRoute.test.name,
      name: TestRoute.test.name,
      builder: (context, state) => const TestBlocProvider(child: TestPage()),
    ),
  ];
}
