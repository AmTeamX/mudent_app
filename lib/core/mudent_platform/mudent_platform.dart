import 'package:flutter/foundation.dart';

final class MudentPlatform {
  MudentPlatform._();

  static bool get isAndroid => defaultTargetPlatform == TargetPlatform.android;
  static bool get isIOS => defaultTargetPlatform == TargetPlatform.iOS;
}
