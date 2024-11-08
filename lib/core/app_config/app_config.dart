enum AppConfigFlavor { dev, stg, prd }

class AppConfig {
  AppConfig._();
  static final _instance = AppConfig._();
  static AppConfig get instance => _instance;

  late AppConfigFlavor env;

  bool get isDev => env == AppConfigFlavor.dev;
  bool get isStg => env == AppConfigFlavor.stg;
  bool get isPrd => env == AppConfigFlavor.prd;

  bool _isAlreadyInitialzed = false;

  Future<void> init(AppConfigFlavor e) async {
    if (_isAlreadyInitialzed) {
      return;
    }
    _isAlreadyInitialzed = true;
    env = e;
  }

  String get apiURL {
    const String envURL = String.fromEnvironment('apiURL');
    if (envURL.isNotEmpty) {
      return envURL;
    } else {
      throw Exception('The API URL is not defined yet');
    }
  }

  String get authApiURL {
    const String envURL = String.fromEnvironment('authApiURL');
    if (envURL.isNotEmpty) {
      return envURL;
    } else {
      throw Exception('The Auth API URL is not defined yet');
    }
  }

  Uri get apiURI => Uri.parse(apiURL);
}
