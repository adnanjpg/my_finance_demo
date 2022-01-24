import 'package:flutter/widgets.dart';

class CategoryModel {
  final String title;
  final double percentage;
  final Color color;

  const CategoryModel({
    required this.title,
    required this.percentage,
    required this.color,
  });
}
