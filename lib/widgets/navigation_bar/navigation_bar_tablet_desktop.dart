import 'package:flutter/material.dart';
import 'package:web_landing_page/utils/constans/color_theme.dart';
import 'package:web_landing_page/utils/constans/size_padding_margin.dart';
import 'package:web_landing_page/utils/route/route_name.dart';
import 'package:web_landing_page/widgets/navigation_bar/navbar_logo.dart';
import 'package:web_landing_page/widgets/navigation_bar/navigation_bar_item.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorTheme.primaryDarkColor,
      height: 100,
      child: const Padding(
        padding: SizePaddingMargin.paddingHorizontal48,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            NavbarLogo(),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                NavigationBarItem(
                  title: 'Beranda',
                  nameRoute: RouteName.homeRoute,
                ),
                SizedBox(
                  width: 60,
                ),
                NavigationBarItem(
                    title: 'Produk', nameRoute: RouteName.productRoute),
                SizedBox(
                  width: 60,
                ),
                NavigationBarItem(
                    title: 'Tentang', nameRoute: RouteName.aboutRoute),
              ],
            )
          ],
        ),
      ),
    );
  }
}
