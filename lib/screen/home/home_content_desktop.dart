import 'package:flutter/material.dart';
import 'package:web_landing_page/utils/constans/data_dummy.dart';
import 'package:web_landing_page/utils/constans/size_box.dart';
import 'package:web_landing_page/utils/constans/size_padding_margin.dart';
import 'package:web_landing_page/utils/constans/size_text.dart';
import 'package:web_landing_page/widgets/body/body_home.dart';
import 'package:web_landing_page/widgets/illustrator/illustrator_home.dart';
import 'package:web_landing_page/widgets/text_costom/text_costom.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: SizePaddingMargin.paddingHorizontal48,
      child: Column(
        children: [
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const BodyHome(),
              ilustratorHome(SizeBox.sizeBox350, SizeBox.sizeBox350,
                  DataDummy.dummyPhotoIllustrator[0]),
            ],
          ),
          const Spacer(),
          TextCostom.describeHome(
              '© 2023 Valendion Pradana Pasalu', SizeText.h3),
          const SizedBox(
            height: SizePaddingMargin.sizeHeight16,
          ),
        ],
      ),
    );
  }
}
