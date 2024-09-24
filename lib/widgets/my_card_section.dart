import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:responsive_dashboard/models/transaction_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Padding(
        padding: EdgeInsets.all(24),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "My card",
            style: AppStyles.styleSemiBold20,
          ),
          SizedBox(
            height: 20,
          ),
          MyCard(),
          SizedBox(
            height: 19,
          ),
          // points
          Divider(
            height: 40,
            color: Color(0xFFF1F1F1),
          ),
          TransactionHistorySection()
        ]),
      ),
    );
  }
}

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

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

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 412 / 215,
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: const BoxDecoration(
          image:
              DecorationImage(image: AssetImage(Assets.imagesCardBackground)),
          color: Color(0xFF4EB7F2),
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name card",
                      style: AppStyles.styleRegular16
                          .copyWith(color: const Color(0xffFFFFFF)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Syah Bandi",
                      style: AppStyles.styleMedium20,
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(FontAwesomeIcons.image),
              ],
            ),
            const Spacer(),
            Text(
              "0918 8124 0042 8129",
              style: AppStyles.styleSemiBold24.copyWith(
                color: const Color(
                  0xFFFFFFFF,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "12/20 - 124",
              style: AppStyles.styleRegular16.copyWith(
                color: const Color(
                  0xFFFFFFFF,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
