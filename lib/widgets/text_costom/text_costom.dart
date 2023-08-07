import 'package:flutter/material.dart';
import 'package:web_landing_page/utils/constans/color_theme.dart';
import 'package:web_landing_page/utils/constans/size_text.dart';

class TextCostom {
  static Text titleLogo(String title) {
    return Text(
      title,
      style: TextStyle(
          color: ColorTheme.primaryColor,
          fontSize: SizeText.textLogo,
          fontWeight: FontWeight.w700,
          fontFamily: 'Lightning'),
    );
  }

  static Text navBarItem(String text) {
    return Text(
      text,
      style: TextStyle(
        color: ColorTheme.primaryColor,
        fontSize: SizeText.h2,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  static Text describeHome(String describe, double textSize) {
    return Text(
      describe,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: ColorTheme.primaryColor,
        fontSize: textSize,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  static Text regulerCustom(String text, double fontSize) {
    return Text(
      text,
      style: TextStyle(
        color: ColorTheme.primaryColor,
        fontSize: fontSize,
      ),
    );
  }

  static Text reguler(String text) {
    return Text(
      text,
      style: const TextStyle(color: ColorTheme.primaryColor),
    );
  }

  static Text regulerTitleCostom(String text, double textSize) {
    return Text(
      text,
      style: TextStyle(
        color: ColorTheme.primaryColor,
        fontSize: textSize,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  static Text textDrawer(String text) {
    return Text(
      text,
      style: TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: SizeText.h3,
          color: ColorTheme.primaryColor),
    );
  }
}
