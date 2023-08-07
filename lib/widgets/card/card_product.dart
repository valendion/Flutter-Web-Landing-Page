import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web_landing_page/utils/constans/color_theme.dart';
import 'package:web_landing_page/utils/constans/size_padding_margin.dart';
import 'package:web_landing_page/utils/constans/size_text.dart';
import 'package:web_landing_page/widgets/text_costom/text_costom.dart';

class CardProduct extends StatelessWidget {
  const CardProduct(
      {super.key, required this.titleCard, required this.pathImage});

  final String titleCard;
  final String pathImage;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 25,
      semanticContainer: true,
      shadowColor: ColorTheme.shadowColor,
      child: Padding(
        padding: SizePaddingMargin.margin16,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: SvgPicture.asset(
                height: 150,
                pathImage,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              height: SizePaddingMargin.sizeHeight16,
            ),
            TextCostom.regulerTitleCostom(titleCard, SizeText.h2)
          ],
        ),
      ),
    );
  }
}
