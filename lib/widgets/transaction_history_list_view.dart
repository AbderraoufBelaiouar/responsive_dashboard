import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  final List<TransactionModel> items = const [
    TransactionModel(
      isWithdraw: false,
      title: 'Cash Withdrawal',
      date: ' 13 Apr, 2022 ',
      amount: 20.129,
    ),
    TransactionModel(
        isWithdraw: false,
        title: 'Landing Page project',
        date: '13 Apr, 2022 at 3:30 PM',
        amount: 20.129),
    TransactionModel(
        isWithdraw: true,
        title: 'Juni Mobile App project',
        date: ' 13 Apr, 2022 at 3:30 PM',
        amount: 20.000),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map(
            (e) => TransactionItem(
              itemModel: e,
            ),
          )
          .toList(),
    );
  }
}
