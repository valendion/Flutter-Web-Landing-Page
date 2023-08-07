import 'package:flutter/material.dart';
import 'package:web_landing_page/utils/constans/data_dummy.dart';
import 'package:web_landing_page/utils/constans/size_padding_margin.dart';
import 'package:web_landing_page/utils/constans/size_text.dart';
import 'package:web_landing_page/utils/constans/text_constan.dart';
import 'package:web_landing_page/widgets/card/card_about.dart';
import 'package:web_landing_page/widgets/carousel/caraousel.dart';
import 'package:web_landing_page/widgets/iframe/iframe.dart';
import 'package:web_landing_page/widgets/text_costom/text_costom.dart';

class AboutContentDesktop extends StatelessWidget {
  const AboutContentDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: SizePaddingMargin.margin16,
        child: Column(
          children: [
            Carousel(width: MediaQuery.of(context).size.width / 1.5),
            const SizedBox(
              height: SizePaddingMargin.sizeHeight32,
            ),
            CardAbout(
              isColumn: false,
              widgetsLeft: [
                TextCostom.regulerTitleCostom('Telepon', 25),
                const SizedBox(
                  height: SizePaddingMargin.sizeHeight16,
                ),
                TextCostom.regulerCustom('08534016755', 18),
                const SizedBox(
                  height: SizePaddingMargin.sizeHeight32,
                ),
                TextCostom.regulerTitleCostom('Whatapp', 25),
                const SizedBox(
                  height: SizePaddingMargin.sizeHeight16,
                ),
                TextCostom.regulerCustom('08534016755', 18),
              ],
              pathImage: DataDummy.dummyPhotoIllustrator[2],
              title: TextConstans.titleContact,
            ),
            const SizedBox(
              height: SizePaddingMargin.sizeHeight32,
            ),
            CardAbout(
              isColumn: false,
              widgetsLeft: [
                TextCostom.regulerTitleCostom('Alamat', 25),
                const SizedBox(
                  height: SizePaddingMargin.sizeHeight16,
                ),
                TextCostom.regulerCustom('Jl. H Jamil Ismail No. 47', 18),
              ],
              pathImage: DataDummy.dummyPhotoIllustrator[1],
              title: TextConstans.titleAddress,
            ),
            const SizedBox(
              height: SizePaddingMargin.sizeHeight32,
            ),
            IFrame(
              sizeIframe: TextConstans.sizeIframe100,
            ),
            const SizedBox(
              height: SizePaddingMargin.sizeHeight32,
            ),
            TextCostom.describeHome(
                '© 2023 Valendion Pradana Pasalu', SizeText.h3),
            const SizedBox(
              height: SizePaddingMargin.sizeHeight16,
            ),
          ],
        ),
      ),
    );
  }
}
