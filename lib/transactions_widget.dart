import 'package:flutter/material.dart';

import 'models/transaction_model.dart';
import 'utils/temp_data.dart';
import 'utils/utils.dart';

class TransactionsWidget extends StatelessWidget {
  const TransactionsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.all(defPaddingSize),
          child: Text(
            'Last Transactions',
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        const TransactionList(),
      ],
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
