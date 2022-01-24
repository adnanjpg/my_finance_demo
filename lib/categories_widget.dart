import 'package:flutter/material.dart';
import 'utils/utils.dart';

import 'categories_graph.dart';

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

const categoriesList = [
  CategoryModel(
    title: 'Apartment bills',
    percentage: 33,
    color: ColorTable.clrs_4,
  ),
  CategoryModel(
    title: 'Groceries',
    percentage: 25.5,
    color: ColorTable.clrs_5,
  ),
  CategoryModel(
    title: 'Cafes & Entertainment',
    percentage: 21,
    color: ColorTable.clrs_2,
  ),
  CategoryModel(
    title: 'Transport',
    percentage: 10.5,
    color: ColorTable.clrs_3,
  ),
  CategoryModel(
    title: 'Health',
    percentage: 5.7,
    color: ColorTable.clrs_1,
  ),
  CategoryModel(
    title: 'Subscriptions',
    percentage: 4.3,
    color: ColorTable.clrs_6,
  ),
];

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Categories'),
        Container(
          margin: const EdgeInsets.all(defPaddingSize),
          child: Row(
            children: const [
              CategoriesGraph(),
              _CategoriesTitles(),
            ]
                .map(
                  (e) => Expanded(child: e),
                )
                .toList()
                .joinWidgetList(
                  (index) => const SizedBox(width: defPaddingSize),
                ),
          ),
        ),
      ],
    );
  }
}

class _CategoriesTitles extends StatelessWidget {
  const _CategoriesTitles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (final category in categoriesList)
          Container(
            margin: const EdgeInsets.only(bottom: defPaddingSize),
            child: ListTile(
              title: Text(category.title),
              subtitle: Container(
                margin: const EdgeInsets.only(top: halfDefPaddingSize),
                child: Row(
                  children: [
                    Container(
                      width: defPaddingSize,
                      height: defPaddingSize,
                      decoration: BoxDecoration(
                        color: category.color,
                        borderRadius: BorderRadius.circular(defPaddingSize),
                      ),
                    ),
                    Text(
                      category.percentage.toStringAsFixed(1) + '%',
                    ),
                  ].joinWidgetList(
                    (index) => const SizedBox(width: halfDefPaddingSize),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
