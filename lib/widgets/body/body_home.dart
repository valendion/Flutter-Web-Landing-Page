import 'package:flutter/material.dart';
import 'package:web_landing_page/services/navigation_service.dart';
import 'package:web_landing_page/utils/constans/size_text.dart';
import 'package:web_landing_page/utils/constans/text_constan.dart';
import 'package:web_landing_page/utils/locator.dart';
import 'package:web_landing_page/utils/route/route_name.dart';
import 'package:web_landing_page/widgets/button/primary_button.dart';
import 'package:web_landing_page/widgets/text_costom/text_costom.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var sizeTitle =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? SizeText.h1
              : SizeText.textTitleHome;

      var sizeTextButton =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? SizeText.h2
              : SizeText.h1;
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextCostom.describeHome(TextConstans.describeHome, sizeTitle),
          const SizedBox(
            height: 32,
          ),
          primaryBtn(
            'Cari Kebutuhanmu',
            sizeTextButton,
            () {
              locator<NavigationService>().navigateTo(RouteName.productRoute);
            },
          ),
        ],
      );
    });
  }
}
