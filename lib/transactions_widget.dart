import 'package:flutter/material.dart';
import 'utils/utils.dart';

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

const transcationsList = [
  TransactionModel(
    title: 'Uber Taxi',
    categoryName: 'Transport',
    icon: Icons.directions_car,
    amount: 13.55,
    color: ColorTable.clrs_5,
  ),
  TransactionModel(
    title: 'Lou lou Cafe',
    categoryName: 'Cafes & Entertainment',
    icon: Icons.dining,
    amount: 75.40,
    color: ColorTable.clrs_3,
  ),
  TransactionModel(
    title: 'Google One',
    categoryName: 'Subscriptions',
    icon: Icons.sports_esports,
    amount: 20.99,
    color: ColorTable.clrs_7,
  ),
];

class TransactionsWidget extends StatelessWidget {
  const TransactionsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(defPaddingSize),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Last Transactions',
            style: Theme.of(context).textTheme.headline5,
          ),
          const TransactionList(),
        ],
      ),
    );
  }
}

class TransactionList extends StatelessWidget {
  const TransactionList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transcationsList.map(TransactionItem.new).toList(),
    );
  }
}

class TransactionItem extends StatelessWidget {
  final TransactionModel model;
  const TransactionItem(this.model, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey[800],
        child: Icon(
          model.icon,
          color: model.color,
        ),
      ),
      title: Text(
        model.title,
        style: TextStyle(
          color: model.color,
        ),
      ),
      subtitle: Text(
        model.categoryName,
        style: Theme.of(context).textTheme.caption?.copyWith(
              color: Colors.grey[700],
            ),
      ),
      trailing: Text(
        '-\$${model.amount.toStringAsFixed(2)}',
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
