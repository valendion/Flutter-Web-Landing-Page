import 'package:flutter/material.dart';
import 'package:web_landing_page/widgets/navigation_bar/navbar_logo.dart';

import '../../utils/constans/color_theme.dart';

class NavigationBarMobile extends StatelessWidget {
  const NavigationBarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: ColorTheme.primaryDarkColor,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.menu),
          ),
          const NavbarLogo()
        ],
      ),
    );
  }
}
