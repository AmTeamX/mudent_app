import 'package:flutter/material.dart';

class MudentNavigatorGlobalKey {
  MudentNavigatorGlobalKey._();

  static final GlobalKey<NavigatorState> rootNavigator =
      GlobalKey(debugLabel: 'root');
}
