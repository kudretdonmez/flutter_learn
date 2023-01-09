import 'package:flutter/material.dart';

class LightTheme {
  final _lightColor = _LightColor();

  late ThemeData theme;

  LightTheme() {
    theme = ThemeData(
      scaffoldBackgroundColor: Colors.white.withOpacity(0.8),
      //!-----------------------------------------------------------------------
      appBarTheme: const AppBarTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
      ),

      //!-----------------------------------------------------------------------
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color.fromARGB(255, 230, 76, 38),
      ),
      //!-----------------------------------------------------------------------
      buttonTheme: ButtonThemeData(
        colorScheme: ColorScheme.light(
          onPrimary: Colors.purple,
          onSecondary: _lightColor._buttonColor,
        ),
      ),
      //!-----------------------------------------------------------------------
      colorScheme: const ColorScheme.light(),
      //!-----------------------------------------------------------------------
      textTheme: ThemeData.light().textTheme.copyWith(
            subtitle1: TextStyle(
              fontSize: 25,
              color: _lightColor._textColor,
            ),
          ),
      //!-----------------------------------------------------------------------
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.all(Colors.green),
        side: const BorderSide(color: Colors.green),
      ),
    );
  }
}

class _LightColor {
  final Color _textColor = const Color.fromARGB(255, 8, 63, 10);
  final Color _buttonColor = const Color.fromARGB(255, 19, 159, 178);
}
