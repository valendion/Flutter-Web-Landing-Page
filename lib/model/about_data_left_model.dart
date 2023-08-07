class AboutDataLeftModel {
  String title;
  String value;

  AboutDataLeftModel({
    required this.title,
    required this.value,
  });

  AboutDataLeftModel copyWith({
    String? title,
    String? value,
  }) =>
      AboutDataLeftModel(
        title: title ?? this.title,
        value: value ?? this.value,
      );
}
