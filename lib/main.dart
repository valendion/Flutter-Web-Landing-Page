import 'package:flutter/material.dart';
import 'package:web_landing_page/screen/layout_template/layout_template.dart';
import 'package:web_landing_page/theme/button_primary.dart';
import 'package:web_landing_page/utils/constans/color_theme.dart';
import 'package:web_landing_page/utils/locator.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sinta Kios',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Helvetica'),
          colorScheme:
              ColorScheme.fromSeed(seedColor: ColorTheme.primaryDarkColor),
          useMaterial3: true,
          elevatedButtonTheme: ButtonPrimary.elevatedButtonTheme()),
      home: const LayoutTemplate(),
    );
  }
}
