import 'package:flutter/material.dart';
import 'package:web_landing_page/utils/constans/color_theme.dart';
import 'package:web_landing_page/utils/constans/size_box.dart';
import 'package:web_landing_page/utils/constans/size_padding_margin.dart';
import 'package:web_landing_page/utils/constans/size_text.dart';
import 'package:web_landing_page/widgets/illustrator/illustrator_home.dart';
import 'package:web_landing_page/widgets/text_costom/text_costom.dart';

class CardAbout extends StatelessWidget {
  const CardAbout({
    super.key,
    required this.widgetsLeft,
    required this.pathImage,
    required this.title,
    required this.isColumn,
  });
  final List<Widget> widgetsLeft;
  final String title;
  final String pathImage;
  final bool isColumn;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width / 1.5,
      child: Card(
        elevation: 25,
        shadowColor: ColorTheme.shadowColor,
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            TextCostom.describeHome(title, SizeText.h1),
            const SizedBox(
              height: 16,
            ),
            isColumn
                ? Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: widgetsLeft,
                      ),
                      Padding(
                        padding: SizePaddingMargin.margin16,
                        child: ilustratorHome(
                            SizeBox.sizeBox350, SizeBox.sizeBox350, pathImage),
                      ),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: widgetsLeft,
                      ),
                      ilustratorHome(
                          SizeBox.sizeBox350, SizeBox.sizeBox350, pathImage),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
