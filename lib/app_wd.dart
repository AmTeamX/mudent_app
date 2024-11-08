import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:mudent_app/core/mudent_navigator/src/mudent_navigator.dart';

import 'config/config.dart';

class AppWD extends StatelessWidget {
  const AppWD({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      initial: AdaptiveThemeMode.light,
      light: MudentTheme.light,
      dark: MudentTheme.dark,
      builder: (lightTheme, darkTheme) => MaterialApp.router(
        routerConfig: MudentNavigator.instance.router,
        theme: lightTheme,
        darkTheme: darkTheme,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
