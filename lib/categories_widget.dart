import 'package:flutter/material.dart';

import 'categories_graph.dart';
import 'models/category_model.dart';
import 'utils/temp_data.dart';
import 'utils/utils.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(defPaddingSize),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Categories',
            style: Theme.of(context).textTheme.headline4?.copyWith(
                  color: Colors.white,
                ),
          ),
          Row(
            children: const [
              CategoriesGraph(),
              CategoriesTitles(),
            ]
                .map(
                  (e) => Expanded(child: e),
                )
                .toList()
                .joinWidgetList(
                  (index) => const SizedBox(width: defPaddingSize),
                ),
          ),
        ],
      ),
    );
  }
}

class CategoriesTitles extends StatelessWidget {
  const CategoriesTitles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: categoriesList.map(CategoryItem.new).toList());
  }
}

class CategoryItem extends StatelessWidget {
  final CategoryModel model;
  const CategoryItem(this.model, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        model.title,
        style: Theme.of(context).textTheme.bodyText1,
      ),
      subtitle: Container(
        margin: const EdgeInsets.only(top: halfDefPaddingSize),
        child: Row(
          children: [
            Container(
              width: defPaddingSize,
              height: defPaddingSize,
              decoration: BoxDecoration(
                color: model.color,
                borderRadius: BorderRadius.circular(defPaddingSize),
              ),
            ),
            Text(model.percentage.toStringAsFixed(1) + '%'),
          ].joinWidgetList(
            (index) => const SizedBox(width: halfDefPaddingSize),
          ),
        ),
      ),
    );
  }
}
