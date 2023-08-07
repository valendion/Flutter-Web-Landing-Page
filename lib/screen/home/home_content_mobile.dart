import 'package:flutter/material.dart';
import 'package:web_landing_page/utils/constans/data_dummy.dart';
import 'package:web_landing_page/utils/constans/size_box.dart';
import 'package:web_landing_page/utils/constans/size_padding_margin.dart';
import 'package:web_landing_page/widgets/body/body_home.dart';
import 'package:web_landing_page/widgets/illustrator/illustrator_home.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: SizePaddingMargin.paddingHorizontal48,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                height: 50,
              ),
              const BodyHome(),
              ilustratorHome(SizeBox.sizeBox350, SizeBox.sizeBox350,
                  DataDummy.dummyPhotoIllustrator[0])
            ],
          ),
        ),
      ),
    );
  }
}
