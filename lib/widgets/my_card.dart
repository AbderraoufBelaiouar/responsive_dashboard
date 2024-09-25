import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

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
