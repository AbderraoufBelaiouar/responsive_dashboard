import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/my_cards_and_transaction_history_section.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            AllExpensesAndQuickInvoiceSection(),
            SizedBox(
              height: 24,
            ),
            MyCardsAndTransactionHistorySection(),
            SizedBox(
              height: 24,
            ),
            IncomeSection()
          ],
        ),
      ),
    );
  }
}
