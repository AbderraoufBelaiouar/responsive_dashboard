import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/dots_indicator.dart';
import 'package:responsive_dashboard/widgets/my_cards_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late int currentIndex;
  late PageController pageController;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(
      () {
        currentIndex = pageController.page!.round();
      },
    );
    currentIndex = 0;
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            "My card",
            style: AppStyles.styleSemiBold20,
          ),
          const SizedBox(
            height: 20,
          ),
          MyCardsPageView(
            pageController: pageController,
          ),
          const SizedBox(
            height: 19,
          ),
          DotsIndicator(
            currentIndex: currentIndex,
          ),
          const Divider(
            height: 40,
            color: Color(0xFFF1F1F1),
          ),
          const TransactionHistory()
        ]),
      ),
    );
  }
}

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(
          height: 20,
        ),
        Text(
          "13 April 2022",
          style:
              AppStyles.styleMedium16.copyWith(color: const Color(0xFFAAAAAA)),
        ),
        const SizedBox(
          height: 16,
        ),
        const TransactionItem(
          itemModel: TransactionItemModel(
              title: 'title', date: ' date', amount: 20.00),
        ),
        const TransactionItem(
          itemModel: TransactionItemModel(
              title: 'title', date: ' date', amount: 20.00),
        ),
        const TransactionItem(
          itemModel: TransactionItemModel(
              title: 'title', date: ' date', amount: 20.00),
        )
      ],
    );
  }
}

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.itemModel});
  final TransactionItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: Center(
        child: ListTile(
          title: Text(
            itemModel.title,
            style: AppStyles.styleSemiBold16,
          ),
          subtitle: Text(
            itemModel.date,
            style: AppStyles.styleRegular16,
          ),
          trailing: Text(
            r"$" " ${itemModel.amount}",
            style: AppStyles.styleSemiBold16.copyWith(color: Colors.red),
          ),
        ),
      ),
    );
  }
}

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Transaction History",
          style: AppStyles.styleSemiBold20,
        ),
        const Spacer(),
        Text(
          "See all",
          style: AppStyles.styleMedium16.copyWith(
            color: const Color(0xFF4EB7F2),
          ),
        ),
      ],
    );
  }
}
