import 'package:core_util/util.dart';
import 'package:feature_auth/fooponote.dart';
import 'package:fooponote/route/route.dart';

class AppModule extends Module {
  // final String baseUrl;

  // AppModule({required this.baseUrl});

  @override
  List<Module> get imports => [
    ClindModule(),
    AuthModule(),
    // CommunityModule(),
    // NotificationModule(),
    // MyModule(),
    // SearchModule(),
  ];

  @override
  void binds(Injector i) {
    i.addSingleton(() => EventBus());
    // i.addSingleton(() => ClindRestClient()..update(baseUrl: baseUrl));

    imports.map((import) => import.binds(i)).toList();
  }

  @override
  void exportedBinds(Injector i) =>
      imports.map((import) => import.exportedBinds(i)).toList();

  @override
  void routes(RouteManager r) =>
      imports.map((import) => import.routes(r)).toList();
}

class ClindModule extends Module {
  @override
  void routes(RouteManager r) {
    for (final ModularRoute route in IFooponoteRoutes.routes) {
      r.add(route);
    }
  }
}
