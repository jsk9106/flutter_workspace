enum Flavor { dev, prod }

class F {
  static late final Flavor appFlavor;

  static String get name => appFlavor.name;

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return '[DEV]example';
      case Flavor.prod:
        return 'example';
    }
  }

  static String get envPath {
    switch (appFlavor) {
      case Flavor.dev:
        return 'assets/env/.dev.env';
      case Flavor.prod:
        return 'assets/env/.prod.env';
    }
  }
}
