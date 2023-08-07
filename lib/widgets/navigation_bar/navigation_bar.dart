import 'package:flutter/material.dart';
import 'package:web_landing_page/widgets/navigation_bar/navigation_bar_mobile.dart';
import 'package:web_landing_page/widgets/navigation_bar/navigation_bar_tablet_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationBarCostum extends StatelessWidget {
  const NavigationBarCostum({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const NavigationBarMobile(),
      tablet: (context) => const NavigationBarMobile(),
      desktop: (context) => const NavigationBarTabletDesktop(),
    );
  }
}
