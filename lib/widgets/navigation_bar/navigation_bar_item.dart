import 'package:flutter/material.dart';
import 'package:web_landing_page/services/navigation_service.dart';
import 'package:web_landing_page/utils/locator.dart';
import 'package:web_landing_page/widgets/text_costom/text_costom.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({
    super.key,
    required this.title,
    required this.nameRoute,
  });
  final String title;
  final String nameRoute;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        locator<NavigationService>().navigateTo(nameRoute);
      },
      child: TextCostom.navBarItem(title),
    );
  }
}
