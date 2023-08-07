import 'package:flutter/material.dart';
import 'package:web_landing_page/utils/constans/color_theme.dart';

class ButtonPrimary {
  static ElevatedButtonThemeData elevatedButtonTheme() {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return ColorTheme.secondaryColor;
            }
            if (states.contains(MaterialState.hovered)) {
              return ColorTheme.primaryHoverColor;
            }
            return null; // Defer to the widget's default.
          },
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
            const TextStyle(fontWeight: FontWeight.w700, fontSize: 24)),
        foregroundColor: MaterialStateProperty.all(
          ColorTheme.primaryColor,
        ),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(ColorTheme.primaryDarkColor),
      ),
    );
  }
}
