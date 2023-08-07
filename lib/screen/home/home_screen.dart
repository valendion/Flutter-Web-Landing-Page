import 'package:flutter/material.dart';
import 'package:web_landing_page/screen/home/home_content_desktop.dart';
import 'package:web_landing_page/screen/home/home_content_mobile.dart';
import 'package:web_landing_page/screen/home/home_content_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      breakpoints: const ScreenBreakpoints(
        tablet: 1165,
        desktop: 1232,
        watch: 310,
      ),
      mobile: (context) => const HomeContentMobile(),
      desktop: (context) => const HomeContentDesktop(),
      tablet: (context) => const HomeContentTablet(),
    );
  }
}
