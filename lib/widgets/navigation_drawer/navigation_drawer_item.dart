import 'package:flutter/material.dart';
import 'package:web_landing_page/widgets/navigation_bar/navigation_bar_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key,
      required this.title,
      required this.icon,
      required this.routeName});
  final String title;
  final IconData icon;
  final String routeName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 36, top: 60, bottom: 36),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(
            width: 30,
          ),
          // TextCostom.textDrawer(title)
          NavigationBarItem(title: title, nameRoute: routeName)
        ],
      ),
    );
  }
}
