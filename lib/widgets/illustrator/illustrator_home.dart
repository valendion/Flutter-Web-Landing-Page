import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget ilustratorHome(double height, double width, String pathImage) {
  return SizedBox(
      height: height, width: width, child: SvgPicture.asset(pathImage));
}
