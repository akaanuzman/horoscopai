import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:horoscopai/products/asset/colors.gen.dart';

/// App theme class
@immutable
final class AppTheme {
  /// App theme class
  AppTheme() {
    _themeData = ThemeData.dark();
  }

  late final ThemeData _themeData;

  /// Returns the current theme data
  ThemeData get currentTheme => _themeData.copyWith(
        scaffoldBackgroundColor: ColorName.darkBackground,
        primaryColor: ColorName.primary,
        primaryColorDark: ColorName.primary,
        textTheme: _textTheme,
        appBarTheme: _appBarTheme,
        outlinedButtonTheme: _outlinedButtonThemeData,
        elevatedButtonTheme: _elevatedButtonThemeData,
      );

  TextTheme get _textTheme => _themeData.textTheme.copyWith(
        headlineLarge: ThemeData.dark().textTheme.headlineLarge?.copyWith(
              color: ColorName.white,
            ),
        headlineMedium: ThemeData.dark().textTheme.headlineMedium?.copyWith(
              color: ColorName.white,
            ),
        headlineSmall: ThemeData.dark().textTheme.headlineSmall?.copyWith(
              color: ColorName.white,
            ),
        titleLarge: _themeData.textTheme.titleLarge?.copyWith(
          color: ColorName.white,
        ),
        titleMedium: _themeData.textTheme.titleMedium?.copyWith(
          color: ColorName.white,
        ),
        titleSmall: _themeData.textTheme.titleSmall?.copyWith(
          color: ColorName.white,
        ),
        bodyLarge: _themeData.textTheme.bodyLarge?.copyWith(
          color: ColorName.white,
        ),
        bodyMedium: _themeData.textTheme.bodyMedium?.copyWith(
          color: ColorName.white,
        ),
        bodySmall: _themeData.textTheme.bodySmall?.copyWith(
          color: ColorName.white,
        ),
        displayLarge: _themeData.textTheme.displayLarge?.copyWith(
          color: ColorName.white,
        ),
        displayMedium: _themeData.textTheme.displayMedium?.copyWith(
          color: ColorName.white,
        ),
        displaySmall: _themeData.textTheme.displaySmall?.copyWith(
          color: ColorName.white,
        ),
        labelLarge: _themeData.textTheme.labelLarge?.copyWith(
          color: ColorName.white,
        ),
        labelMedium: _themeData.textTheme.labelMedium?.copyWith(
          color: ColorName.white,
        ),
        labelSmall: _themeData.textTheme.labelSmall?.copyWith(
          color: ColorName.white,
        ),
      );

  AppBarTheme get _appBarTheme => const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: ColorName.darkBackground,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: ColorName.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: ColorName.white,
        ),
      );

  OutlinedButtonThemeData get _outlinedButtonThemeData =>
      OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 16,
          ),
          elevation: 0,
          side: const BorderSide(
            color: ColorName.primary,
            width: 2,
          ),
          foregroundColor: ColorName.white,
          textStyle: _themeData.textTheme.titleMedium?.copyWith(
            color: ColorName.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      );

  ElevatedButtonThemeData get _elevatedButtonThemeData =>
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorName.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 16,
          ),
          elevation: 0,
          foregroundColor: ColorName.white,
          textStyle: _themeData.textTheme.titleMedium?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      );
}
