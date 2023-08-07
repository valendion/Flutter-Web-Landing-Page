import 'package:flutter/material.dart';

Widget primaryBtn(String nameBtn, double textSize, void Function()? onClick) {
  return ElevatedButton(
    onPressed: onClick,
    child: Text(
      nameBtn,
      style: TextStyle(fontSize: textSize),
    ),
  );
}
