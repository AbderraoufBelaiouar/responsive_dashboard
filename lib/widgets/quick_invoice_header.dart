import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Quick Invoice",
          style: AppStyles.styleSemiBold20,
        ),
        const Expanded(child: SizedBox()),
        Container(
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: Color(0xFFFAFAFA)),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              color: Color(0xFF4EB7F2),
            ),
          ),
        ),
      ],
    );
  }
}
