import 'package:go_router/go_router.dart';
import 'package:mudent_app/features/authentication/login/login_page.dart';
import 'package:mudent_app/features/landing/landing_page.dart';
import 'package:mudent_app/features/main/homepage/home_page.dart';

import '../../../features/main/main_page.dart';
import 'utils/utils.dart';

class Routes {
  const Routes._();

  static dynamic list() => [
        GoRoute(
          path: RoutePaths.landingPage,
          builder: (context, state) => const LandingPage(),
        ),
        GoRoute(
          path: RoutePaths.loginPage,
          builder: (context, state) => const LoginPage(),
        ),
        GoRoute(
          path: RoutePaths.homePage,
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
            path: RoutePaths.mainPage,
            builder: (context, state) => const MainPage()),
      ];
}
