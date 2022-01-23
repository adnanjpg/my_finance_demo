import 'package:flutter/material.dart';
import 'package:my_finance_demo/categories_widget.dart';

import 'home_appbar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: ListView(
        children: const [
          CategoriesWidget(),
        ],
      ),
    );
  }
}
