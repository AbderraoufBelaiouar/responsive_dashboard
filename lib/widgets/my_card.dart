import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "My card",
              style: AppStyles.styleSemiBold20,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: 200,
              decoration: const BoxDecoration(
                color: Color(0xFF4EB7F2),
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: SvgPicture.asset(
                Assets.imagesCardBackground,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
