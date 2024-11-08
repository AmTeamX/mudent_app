import 'package:flutter/material.dart';
import 'package:mudent_app/config/config.dart';

final class MudentTheme {
  MudentTheme._();

  static ThemeData get _baseTheme => ThemeData(
      fontFamily: DesignSystem.fontFamily, disabledColor: DesignSystem.disable);

  static ThemeData get light => _baseTheme.copyWith(
      scaffoldBackgroundColor: Colors.white,
      colorScheme: const ColorScheme.light(
          primary: DesignSystem.primary, error: DesignSystem.error));

  static ThemeData get dark => _baseTheme.copyWith(
      scaffoldBackgroundColor: Colors.black,
      colorScheme: const ColorScheme.dark(
          primary: DesignSystem.primary, error: DesignSystem.error));
}
