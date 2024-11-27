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
      aspectRatio: 420 / 242,
      child: Container(
        padding: const EdgeInsets.only(top: 24, right: 24, left: 24),
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
                      style: AppStyles.styleRegular16(context)
                          .copyWith(color: const Color(0xffFFFFFF)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Syah Bandi",
                      style: AppStyles.styleMedium20(context),
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
              style: AppStyles.styleSemiBold24(context).copyWith(
                color: const Color(
                  0xFFFFFFFF,
                ),
              ),
            ),
            const Flexible(
              child: SizedBox(
                height: 10,
              ),
            ),
            Text(
              "12/20 - 124",
              style: AppStyles.styleRegular16(context).copyWith(
                color: const Color(
                  0xFFFFFFFF,
                ),
              ),
            ),
            const Flexible(
              child: SizedBox(
                height: 54 - 28,
              ),
            )
          ],
        ),
      ),
    );
  }
}
