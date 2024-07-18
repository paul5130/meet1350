enum Flavor {
  dev,
  qat,
  prod,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return '[dev] meet1350';
      case Flavor.qat:
        return '[qat] meet1350';
      case Flavor.prod:
        return 'meet1350';
      default:
        return 'title';
    }
  }

}
