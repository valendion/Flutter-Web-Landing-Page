import 'package:flutter/material.dart';
import 'package:web_landing_page/model/product_model.dart';
import 'package:web_landing_page/utils/constans/size_padding_margin.dart';
import 'package:web_landing_page/utils/constans/size_text.dart';
import 'package:web_landing_page/utils/constans/text_constan.dart';
import 'package:web_landing_page/widgets/card/card_product.dart';
import 'package:web_landing_page/widgets/text_costom/text_costom.dart';

class ProductContentDesktop extends StatelessWidget {
  const ProductContentDesktop({super.key, required this.dataDummyProduct});

  final List<ProductModel> dataDummyProduct;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: SizePaddingMargin.margin32,
      child: Column(
        children: [
          TextCostom.describeHome(TextConstans.titleProduct, SizeText.h1),
          const SizedBox(
            height: 32,
          ),
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverGrid(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 2.0,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return CardProduct(
                        titleCard: dataDummyProduct[index].title,
                        pathImage: dataDummyProduct[index].pathImage,
                      );
                    },
                    childCount: dataDummyProduct.length,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: SizePaddingMargin.sizeHeight16,
          ),
          TextCostom.describeHome(
              '© 2023 Valendion Pradana Pasalu', SizeText.h3),
        ],
      ),
    );
  }
}
