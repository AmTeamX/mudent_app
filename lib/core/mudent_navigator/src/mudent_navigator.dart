import 'package:go_router/go_router.dart';
import 'package:mudent_app/core/mudent_logger/src/mudent_logger.dart';
import 'package:mudent_app/core/mudent_navigator/src/utils/mudent_navigator_global_key.dart';

import 'src.dart';
import 'utils/utils.dart';
import 'widgets/widgets.dart';

class MudentNavigator {
  MudentNavigator._();

  static const _location = 'MudentNavigator';
  static final MudentNavigator _instance = MudentNavigator._();
  static MudentNavigator get instance => _instance;

  final _router = GoRouter(
    initialLocation: RoutePaths.landingPage,
    navigatorKey: MudentNavigatorGlobalKey.rootNavigator,
    routes: Routes.list(),
    errorBuilder: (context, state) => const NotFoundPage(),
  );

  GoRouter get router => _router;

  Future<T?> push<T extends Object?>(String location, {Object? extra}) async {
    MudentLogger.info(location: _location, message: 'push to $location');
    return _router.push(location, extra: extra);
  }

  Future<void> pop<T extends Object?>([T? result]) async {
    MudentLogger.info(location: _location, message: 'pop');
    return _router.pop(result);
  }

  Future<void> go<T extends Object?>(String location, {Object? extra}) async {
    MudentLogger.info(location: _location, message: 'go to $location');
    return _router.go(location, extra: extra);
  }
}
