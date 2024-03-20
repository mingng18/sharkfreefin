import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

extension TypographyUtils on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get urbanistText =>
      GoogleFonts.urbanistTextTheme(theme.textTheme); // Modify this line
  ColorScheme get colors => theme.colorScheme;
  TextStyle? get displayLarge => urbanistText.displayLarge?.copyWith(
        color: colors.onSurface,
      );
  TextStyle? get displayMedium => urbanistText.displayMedium?.copyWith(
        color: colors.onSurface,
      );
  TextStyle? get displaySmall => urbanistText.displaySmall?.copyWith(
        color: colors.onSurface,
      );
  TextStyle? get headlineLarge => urbanistText.headlineLarge?.copyWith(
        color: colors.onSurface,
        fontWeight: FontWeight.w600,
      );
  TextStyle? get headlineMedium => urbanistText.headlineMedium?.copyWith(
        color: colors.onSurface,
      );
  TextStyle? get headlineSmall => urbanistText.headlineSmall?.copyWith(
        color: colors.onSurface,
        fontWeight: FontWeight.w900,
      );
  TextStyle? get titleLarge => urbanistText.titleLarge?.copyWith(
        color: colors.onSurface,
      );
  TextStyle? get titleMedium => urbanistText.titleMedium?.copyWith(
        color: colors.onSurface,
        fontWeight: FontWeight.w700,
      );
  TextStyle? get titleSmall => urbanistText.titleSmall?.copyWith(
        color: colors.onSurface,
      );
  TextStyle? get labelLarge => urbanistText.labelLarge?.copyWith(
        color: colors.onSurface,
      );
  TextStyle? get labelMedium => urbanistText.labelMedium?.copyWith(
        color: colors.onSurface,
      );
  TextStyle? get labelSmall => urbanistText.labelSmall?.copyWith(
        color: colors.onSurface,
        fontWeight: FontWeight.bold,
      );
  TextStyle? get bodyLarge => urbanistText.bodyLarge?.copyWith(
        color: colors.onSurface,
      );
  TextStyle? get bodyMedium => urbanistText.bodyMedium?.copyWith(
        color: colors.onSurface,
      );
  TextStyle? get bodySmall => urbanistText.bodySmall?.copyWith(
        color: colors.onSurface,
      );
}
