enum Flavor {
  dev(true),
  prod(false);

  final bool debugShowCheckedModeBanner;

  const Flavor(this.debugShowCheckedModeBanner);
}

class F {
  static late final Flavor appFlavor;

  static String get name => appFlavor.name;

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return '[DEV]Fooponote';
      case Flavor.prod:
        return 'Fooponote';
    }
  }
}
