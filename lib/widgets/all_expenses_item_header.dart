import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    this.imageColor,
    this.backgroundimageColor,
  });
  final String image;
  final Color? imageColor, backgroundimageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                  color: backgroundimageColor ?? const Color(0xFFFAFAFA),
                  shape: const OvalBorder(),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(
                        imageColor ?? const Color(0xFF4EB7F2), BlendMode.srcIn),
                  ),
                ),
              ),
            ),
          ),
        ),
        // CircleAvatar(
        //   backgroundColor: backgroundimageColor ?? const Color(0xFFFAFAFA),
        //   child: SvgPicture.asset(
        //     image,
        //     colorFilter: ColorFilter.mode(
        //         imageColor ?? const Color(0xFF4EB7F2), BlendMode.srcIn),
        //   ),

        // ),
        const Spacer(),
        Transform.rotate(
          angle: -1.5708 * 2,
          child: Icon(
            Icons.arrow_back_ios,
            color: imageColor ?? const Color(0xFF4EB7F2),
            size: 30,
          ),
        )
      ],
    );
  }
}
