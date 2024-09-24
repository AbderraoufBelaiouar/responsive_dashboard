import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dashboard/widgets/custom_dash_board_drawer.dart';
import 'package:responsive_dashboard/widgets/my_card_section.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        SizedBox(
          width: 40,
        ),
        Expanded(
          flex: 2,
          child: AllExpensesAndQuickInvoiceSection(),
        ),
        SizedBox(
          width: 40,
        ),
        Expanded(flex: 2, child: MyCardSection()),
      ],
    );
  }
}
