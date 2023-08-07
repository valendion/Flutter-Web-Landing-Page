import 'package:flutter/material.dart';
import 'package:web_landing_page/utils/constans/color_theme.dart';
import 'package:web_landing_page/utils/constans/size_padding_margin.dart';
import 'package:web_landing_page/utils/constans/size_shadow.dart';
import 'package:web_landing_page/utils/constans/size_text.dart';
import 'package:web_landing_page/utils/route/route_name.dart';
import 'package:web_landing_page/widgets/navigation_drawer/navigation_drawer_header.dart';
import 'package:web_landing_page/widgets/navigation_drawer/navigation_drawer_item.dart';
import 'package:web_landing_page/widgets/text_costom/text_costom.dart';

class NavigationDrawerMenu extends StatelessWidget {
  const NavigationDrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: const BoxDecoration(
        color: ColorTheme.whiteColor,
        boxShadow: [
          BoxShadow(
              color: ColorTheme.shadowColor,
              blurRadius: SizeShadow.blurRadius16),
        ],
      ),
      child: Column(
        children: [
          const NavigationDrawerHeader(),
          const DrawerItem(
              title: 'Beranda',
              icon: Icons.home,
              routeName: RouteName.homeRoute),
          const DrawerItem(
              title: 'Produk',
              icon: Icons.card_travel,
              routeName: RouteName.productRoute),
          const DrawerItem(
              title: 'Tentang',
              icon: Icons.help,
              routeName: RouteName.aboutRoute),
          const Spacer(),
          TextCostom.regulerCustom(
              '© 2023 Valendion Pradana Pasalu', SizeText.h3),
          const SizedBox(
            height: SizePaddingMargin.sizeHeight16,
          )
        ],
      ),
    );
  }
}
