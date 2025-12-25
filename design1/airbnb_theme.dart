import 'package:flutter/material.dart';

/// Airbnb Design Language System
/// Based on the Airbnb Design Language System (mobile)
class AirbnbTheme {
  // Private constructor to prevent instantiation
  AirbnbTheme._();

  /// Color Palette
  static class AirbnbColors {
    // Text Colors
    static const Color textPrimary = Color(0xFF222222);
    static const Color textSecondary = Color(0xFF717171);
    static const Color textDisabled = Color(0xFFAAAAAA);
    static const Color textDestructive = Color(0xFF8F2A14);
    static const Color textInverse = Color(0xFFFFFFFF);

    // Background Colors
    static const Color backgroundPrimary = Color(0xFFFFFFFF);
    static const Color backgroundButtonTertiary = Color(0xFF222222);
    static const Color backgroundDisabled = Color(0xFFDDDDDD);

    // Gradient Colors
    static const Color brandPinkStart = Color(0xFFD03660);
    static const Color brandPinkEnd = Color(0xFFD73B53);
    static const Color brandPurpleStart = Color(0xFF600F97);
    static const Color brandPurpleEnd = Color(0xFFA22085);

    // Border Colors
    static const Color borderPrimary = Color(0xFF222222);

    // Gradients
    static const LinearGradient primaryButtonGradient = LinearGradient(
      colors: [brandPinkStart, brandPinkEnd],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    );

    static const LinearGradient ornamentalGradient = LinearGradient(
      colors: [brandPurpleStart, brandPurpleEnd],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    );
  }

  /// Typography
  static class AirbnbTypography {
    // Font sizes
    static const double fontSizeSheetTitle = 32.0;
    static const double fontSizeSectionHeader = 23.0;
    static const double fontSizeBody1 = 16.0;
    static const double fontSizeBody2 = 14.0;
    static const double fontSizeButton = 14.0;

    // Line heights
    static const double lineHeightSheetTitle = 36.0;
    static const double lineHeightSectionHeader = 20.0;
    static const double lineHeightBody1 = 23.0;
    static const double lineHeightBody2 = 18.0;
    static const double lineHeightButton = 18.0;

    // Text Styles
    static const TextStyle sheetTitle = TextStyle(
      fontSize: fontSizeSheetTitle,
      height: lineHeightSheetTitle / fontSizeSheetTitle,
      color: AirbnbColors.textPrimary,
      fontWeight: FontWeight.bold,
    );

    static const TextStyle sectionHeader = TextStyle(
      fontSize: fontSizeSectionHeader,
      height: lineHeightSectionHeader / fontSizeSectionHeader,
      color: AirbnbColors.textPrimary,
      fontWeight: FontWeight.w600,
    );

    static const TextStyle body1Header = TextStyle(
      fontSize: fontSizeBody1,
      height: lineHeightBody1 / fontSizeBody1,
      color: AirbnbColors.textPrimary,
      fontWeight: FontWeight.w600,
    );

    static const TextStyle body1HighImportance = TextStyle(
      fontSize: fontSizeBody1,
      height: lineHeightBody1 / fontSizeBody1,
      color: AirbnbColors.textPrimary,
      fontWeight: FontWeight.w500,
    );

    static const TextStyle body1Regular = TextStyle(
      fontSize: fontSizeBody1,
      height: lineHeightBody1 / fontSizeBody1,
      color: AirbnbColors.textPrimary,
      fontWeight: FontWeight.normal,
    );

    static const TextStyle body1Link = TextStyle(
      fontSize: fontSizeBody1,
      height: lineHeightBody1 / fontSizeBody1,
      color: AirbnbColors.textPrimary,
      fontWeight: FontWeight.normal,
      decoration: TextDecoration.underline,
    );

    static const TextStyle body2Header = TextStyle(
      fontSize: fontSizeBody2,
      height: lineHeightBody2 / fontSizeBody2,
      color: AirbnbColors.textPrimary,
      fontWeight: FontWeight.w600,
    );

    static const TextStyle body2HighImportance = TextStyle(
      fontSize: fontSizeBody2,
      height: lineHeightBody2 / fontSizeBody2,
      color: AirbnbColors.textPrimary,
      fontWeight: FontWeight.w500,
    );

    static const TextStyle body2Regular = TextStyle(
      fontSize: fontSizeBody2,
      height: lineHeightBody2 / fontSizeBody2,
      color: AirbnbColors.textPrimary,
      fontWeight: FontWeight.normal,
    );

    static const TextStyle body2Link = TextStyle(
      fontSize: fontSizeBody2,
      height: lineHeightBody2 / fontSizeBody2,
      color: AirbnbColors.textPrimary,
      fontWeight: FontWeight.normal,
      decoration: TextDecoration.underline,
    );

    static const TextStyle button = TextStyle(
      fontSize: fontSizeButton,
      height: lineHeightButton / fontSizeButton,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.5,
    );
  }

  /// Spacing
  static class AirbnbSpacing {
    static const double xs = 8.0;
    static const double sm = 16.0;
    static const double base = 24.0;
    static const double lg = 48.0;
    static const double xl = 64.0;
  }

  /// Theme Data
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,

      // Color Scheme
      colorScheme: ColorScheme.light(
        primary: AirbnbColors.brandPinkStart,
        secondary: AirbnbColors.brandPurpleStart,
        surface: AirbnbColors.backgroundPrimary,
        error: AirbnbColors.textDestructive,
        onPrimary: AirbnbColors.textInverse,
        onSecondary: AirbnbColors.textInverse,
        onSurface: AirbnbColors.textPrimary,
        onError: AirbnbColors.textInverse,
      ),

      // Scaffold
      scaffoldBackgroundColor: AirbnbColors.backgroundPrimary,

      // Text Theme
      textTheme: TextTheme(
        displayLarge: AirbnbTypography.sheetTitle,
        displayMedium: AirbnbTypography.sectionHeader,
        bodyLarge: AirbnbTypography.body1Regular,
        bodyMedium: AirbnbTypography.body2Regular,
        labelLarge: AirbnbTypography.button,
        headlineMedium: AirbnbTypography.body1Header,
        headlineSmall: AirbnbTypography.body2Header,
      ),

      // Button Theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: AirbnbTypography.button,
          padding: const EdgeInsets.symmetric(
            horizontal: AirbnbSpacing.base,
            vertical: AirbnbSpacing.sm,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          textStyle: AirbnbTypography.button,
          foregroundColor: AirbnbColors.textPrimary,
          side: const BorderSide(color: AirbnbColors.borderPrimary),
          padding: const EdgeInsets.symmetric(
            horizontal: AirbnbSpacing.base,
            vertical: AirbnbSpacing.sm,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),

      // Icon Theme
      iconTheme: const IconThemeData(
        color: AirbnbColors.textPrimary,
        size: 24.0,
      ),
    );
  }

  /// Custom Button Widgets
  static Widget primaryGradientButton({
    required String text,
    required VoidCallback onPressed,
    bool enabled = true,
  }) {
    return Container(
      decoration: BoxDecoration(
        gradient: enabled
            ? AirbnbColors.primaryButtonGradient
            : null,
        color: enabled ? null : AirbnbColors.backgroundDisabled,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ElevatedButton(
        onPressed: enabled ? onPressed : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          foregroundColor: AirbnbColors.textInverse,
          disabledForegroundColor: AirbnbColors.textDisabled,
          textStyle: AirbnbTypography.button,
          padding: const EdgeInsets.symmetric(
            horizontal: AirbnbSpacing.base,
            vertical: AirbnbSpacing.sm,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(text),
      ),
    );
  }

  static Widget tertiaryButton({
    required String text,
    required VoidCallback onPressed,
    bool enabled = true,
  }) {
    return ElevatedButton(
      onPressed: enabled ? onPressed : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: enabled
            ? AirbnbColors.backgroundButtonTertiary
            : AirbnbColors.backgroundDisabled,
        foregroundColor: AirbnbColors.textInverse,
        disabledForegroundColor: AirbnbColors.textDisabled,
        textStyle: AirbnbTypography.button,
        padding: const EdgeInsets.symmetric(
          horizontal: AirbnbSpacing.base,
          vertical: AirbnbSpacing.sm,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(text),
    );
  }
}
