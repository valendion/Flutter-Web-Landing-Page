import 'package:flutter/material.dart';
import 'package:web_landing_page/screen/product/product_content_desktop.dart';
import 'package:web_landing_page/screen/product/product_content_mobile.dart';
import 'package:web_landing_page/screen/product/product_content_tablet.dart';
import 'package:web_landing_page/utils/constans/data_dummy.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var dataDummy = DataDummy.dummyProducts;
    return ScreenTypeLayout.builder(
      mobile: (context) => ProductContentMobile(
        dataDummyProduct: dataDummy,
      ),
      desktop: (context) => ProductContentDesktop(dataDummyProduct: dataDummy),
      tablet: (context) => ProductContentTablet(dataDummyProduct: dataDummy),
    );
  }
}
