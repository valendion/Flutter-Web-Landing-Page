import 'package:web_landing_page/model/about_data_left_model.dart';
import 'package:web_landing_page/model/product_model.dart';
import 'package:web_landing_page/utils/constans/text_constan.dart';

class DataDummy {
  static var dummyProducts = [
    ProductModel(
        title: 'Makanan', pathImage: '${TextConstans.pathImage}food.svg'),
    ProductModel(
        title: 'Minuman', pathImage: '${TextConstans.pathImage}drink.svg'),
    ProductModel(
        title: 'Kopi', pathImage: '${TextConstans.pathImage}coffee.svg'),
    ProductModel(
        title: 'Bunga', pathImage: '${TextConstans.pathImage}flower.svg'),
    ProductModel(title: 'Jahit', pathImage: '${TextConstans.pathImage}sew.svg'),
    ProductModel(
        title: 'Pulsa', pathImage: '${TextConstans.pathImage}device.svg'),
  ];

  static var dummyPhotoProfile = [
    '${TextConstans.pathImage}store1.jpg',
    '${TextConstans.pathImage}store2.jpg',
    '${TextConstans.pathImage}store3.jpg',
  ];

  static var dummyPhotoIllustrator = [
    '${TextConstans.pathImage}illustration_shop.svg',
    '${TextConstans.pathImage}illustration_address.svg',
    '${TextConstans.pathImage}illustration_contact.svg',
    '${TextConstans.pathImage}logo_owner.png',
  ];
}
