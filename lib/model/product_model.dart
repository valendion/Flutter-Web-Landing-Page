class ProductModel {
  String title;
  String pathImage;

  ProductModel({
    required this.title,
    required this.pathImage,
  });

  ProductModel copyWith({
    String? title,
    String? pathImage,
  }) =>
      ProductModel(
        title: title ?? this.title,
        pathImage: pathImage ?? this.pathImage,
      );
}
