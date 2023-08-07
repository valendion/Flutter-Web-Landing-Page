import 'package:flutter/material.dart';
import 'package:web_landing_page/screen/about/about_content_desktop.dart';
import 'package:web_landing_page/screen/about/about_content_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      breakpoints: const ScreenBreakpoints(
        tablet: 1165,
        desktop: 1232,
        watch: 310,
      ),
      mobile: (context) => const AboutContentMobile(),
      desktop: (context) => const AboutContentDesktop(),
      tablet: (context) => const AboutContentMobile(),
    );
  }
}
