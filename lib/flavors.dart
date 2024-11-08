import 'core/core.dart';

enum Flavor {
  dev,
  stg,
  prd,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static AppConfigFlavor get appConfigEnv {
    switch (appFlavor) {
      case Flavor.dev:
        return AppConfigFlavor.dev;
      case Flavor.stg:
        return AppConfigFlavor.stg;
      case Flavor.prd:
        return AppConfigFlavor.prd;
      default:
        return AppConfigFlavor.prd;
    }
  }
}
