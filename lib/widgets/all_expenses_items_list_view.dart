import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});

  @override
  State<AllExpensesItemsListView> createState() =>
      _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  final items = const [
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: "Balance",
        amount: 20.128,
        date: "April 2020"),
    AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: "Income",
        amount: 20.128,
        date: "April 2020"),
    AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: "Expenses",
        amount: 20.128,
        date: "April 2020"),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensesItem(
              itemModel: items[0],
              isActive: selectedIndex == 0,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpensesItem(
              itemModel: items[1],
              isActive: selectedIndex == 1,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpensesItem(
              itemModel: items[2],
              isActive: selectedIndex == 2,
            ),
          ),
        )
      ],
    );
  }

  void updateIndex(int index) => setState(() {
        selectedIndex = index;
      });
}
