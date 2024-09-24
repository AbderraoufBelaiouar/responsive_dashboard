import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item_header.dart';

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({super.key, required this.itemModel});

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: const Color(0xFF4EB7F2),
          border: Border.all(
            color: const Color(0xFFF1F1F1),
            width: 1,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(
              20,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpensesItemHeader(
              backgroundimageColor: Colors.white.withOpacity(0.1),
              imageColor: Colors.white,
              image: itemModel.image,
            ),
            const SizedBox(
              height: 34,
            ),
            Text(
              itemModel.title,
              style: AppStyles.styleSemiBold16
                  .copyWith(color: const Color(0xFFFFFFFF)),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              itemModel.date,
              style: AppStyles.styleRegular14
                  .copyWith(color: const Color(0xFFFAFAFA)),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              r"$" " ${itemModel.amount}",
              style: AppStyles.styleSemiBold24
                  .copyWith(color: const Color(0xFFFAFAFA)),
            ),
          ],
        ),
      ),
    );
  }
}

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        alignment: Alignment.centerLeft,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(
              20,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpensesItemHeader(
              image: itemModel.image,
            ),
            const SizedBox(
              height: 34,
            ),
            Text(
              itemModel.title,
              style: AppStyles.styleSemiBold16,
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              itemModel.date,
              style: AppStyles.styleRegular14,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              r"$" " ${itemModel.amount}",
              style: AppStyles.styleSemiBold24,
            ),
          ],
        ),
      ),
    );
  }
}
