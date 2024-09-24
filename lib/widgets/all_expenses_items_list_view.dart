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
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        return Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(index);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
              child: AllExpensesItem(
                itemModel: item,
                isActive: selectedIndex == index,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  void updateIndex(int index) => setState(() {
        selectedIndex = index;
      });
}
