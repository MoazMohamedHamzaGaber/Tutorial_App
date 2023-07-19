import 'package:flutter/material.dart';

class CategoryModel
{
  late IconData iconData;
  late String text;

  CategoryModel({
   required this.iconData,
   required this.text,
  });
}
List<CategoryModel>categoryModel=[
  CategoryModel(
      iconData: Icons.house_rounded,
      text: 'Houses',
  ),
  CategoryModel(
    iconData: Icons.villa,
    text: 'Villa',
  ),
  CategoryModel(
    iconData: Icons.apartment,
    text: 'Apartment',
  ),
  CategoryModel(
    iconData: Icons.castle_rounded,
    text: 'Castles',
  ),
];