import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.itemModel});
  final TransactionModel itemModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: Center(
        child: ListTile(
          title: Text(
            itemModel.title,
            style: AppStyles.styleSemiBold16(context),
          ),
          subtitle: Text(
            itemModel.date,
            style: AppStyles.styleRegular16(context)
                .copyWith(color: const Color(0xFFAAAAAA)),
          ),
          trailing: Text(
            r"$" " ${itemModel.amount}",
            style: AppStyles.styleSemiBold16(context).copyWith(
                color: !itemModel.isWithdraw
                    ? const Color(0xFF7DD97B)
                    : const Color(0xFFF3735E)),
          ),
        ),
      ),
    );
  }
}
