import 'package:flutter/material.dart';
import 'package:web_landing_page/utils/constans/color_theme.dart';
import 'package:web_landing_page/widgets/text_costom/text_costom.dart';

class NavigationDrawerHeader extends StatelessWidget {
  const NavigationDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: ColorTheme.secondaryColor,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextCostom.navBarItem('Menu'),
          TextCostom.navBarItem('Silahkan pilih'),
        ],
      ),
    );
  }
}
