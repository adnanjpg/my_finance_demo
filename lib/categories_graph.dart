import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

import 'utils/temp_data.dart';

class CategoriesGraph extends StatelessWidget {
  const CategoriesGraph({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PieChart(
      dataMap: {
        for (var cat in categoriesList) cat.title: cat.percentage,
      },
      animationDuration: const Duration(milliseconds: 800),
      colorList: categoriesList.map((cat) => cat.color).toList(),
      chartType: ChartType.ring,
      chartValuesOptions: const ChartValuesOptions(
        showChartValues: false,
      ),
      legendOptions: const LegendOptions(
        showLegends: false,
      ),
      ringStrokeWidth: 50,
      degreeOptions: const DegreeOptions(
        initialAngle: -90,
        totalDegrees: 180,
      ),
    );
  }
}
