import 'package:flutter/material.dart';

import 'home.dart';
import 'utils/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Buntype',
        colorScheme: const ColorScheme.dark(
          primary: ColorTable.primary,
        ),
      ),
      home: const Home(),
    );
  }
}
