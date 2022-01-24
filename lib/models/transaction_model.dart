import 'package:flutter/widgets.dart';

class TransactionModel {
  final String title;
  final String categoryName;
  final IconData icon;
  final double amount;
  final Color color;

  const TransactionModel({
    required this.title,
    required this.categoryName,
    required this.icon,
    required this.amount,
    required this.color,
  });
}
