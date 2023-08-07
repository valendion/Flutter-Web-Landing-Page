import 'package:flutter/material.dart';
import 'package:web_landing_page/utils/constans/data_dummy.dart';

class NavbarLogo extends StatelessWidget {
  const NavbarLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(child: Image.asset(DataDummy.dummyPhotoIllustrator[3])
        // child: TextCostom.titleLogo(TextConstans.nameCompany),
        );
  }
}
