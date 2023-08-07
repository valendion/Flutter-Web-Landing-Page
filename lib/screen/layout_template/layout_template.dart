import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_landing_page/services/navigation_service.dart';
import 'package:web_landing_page/utils/constans/color_theme.dart';
import 'package:web_landing_page/utils/locator.dart';
import 'package:web_landing_page/utils/route/route_generator.dart';
import 'package:web_landing_page/utils/route/route_name.dart';
import 'package:web_landing_page/widgets/navigation_bar/navigation_bar.dart';
import 'package:web_landing_page/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../bloc/indicator_page.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return BlocProvider(
        create: (context) => IndicatorPageCubit(),
        child: Scaffold(
          drawer: sizingInformation.deviceScreenType ==
                      DeviceScreenType.mobile ||
                  sizingInformation.deviceScreenType == DeviceScreenType.tablet
              ? const NavigationDrawerMenu()
              : null,
          backgroundColor: ColorTheme.backgroundColor,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const NavigationBarCostum(),
              Expanded(
                child: Navigator(
                  key: locator<NavigationService>().navigatorKey,
                  onGenerateRoute: locator<RouteGenerator>().generateRoute,
                  initialRoute: RouteName.homeRoute,
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
