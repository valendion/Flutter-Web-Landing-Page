import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_landing_page/bloc/indicator_page.dart';
import 'package:web_landing_page/utils/constans/color_theme.dart';
import 'package:web_landing_page/utils/constans/data_dummy.dart';
import 'package:web_landing_page/utils/constans/size_padding_margin.dart';

class Carousel extends StatelessWidget {
  const Carousel({super.key, required this.width});
  final double width;
  @override
  Widget build(BuildContext context) {
    var state = context.watch<IndicatorPageCubit>().state;
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: DataDummy.dummyPhotoProfile.length,
          options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              height: MediaQuery.of(context).size.height / 1.5,
              onPageChanged: (index, reason) {
                context.read<IndicatorPageCubit>().movePage(index);
              }),
          itemBuilder: (ctx, index, realIdx) {
            return Container(
              width: width,
              margin: SizePaddingMargin.paddingVertical48,
              decoration: const BoxDecoration(color: ColorTheme.primaryColor),
              child: Image.asset(
                DataDummy.dummyPhotoProfile[index],
                fit: BoxFit.fill,
              ),
            );
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: DataDummy.dummyPhotoProfile.asMap().entries.map((entry) {
            return Container(
              width: 12.0,
              height: 12.0,
              margin: SizePaddingMargin.paddingVertical8Horizontal4,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: (Theme.of(context).brightness == Brightness.dark
                          ? ColorTheme.whiteColor
                          : ColorTheme.blackColor)
                      .withOpacity(state == entry.key ? 0.9 : 0.4)),
            );
          }).toList(),
        ),
      ],
    );
  }
}
