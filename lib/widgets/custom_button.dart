import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, this.textColor, this.buttonColor, required this.text});
  final Color? textColor;
  final Color? buttonColor;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(20),
            elevation: 0,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12))),
            backgroundColor: buttonColor ?? const Color(0xFF4EB7F2)),
        onPressed: () {},
        child: Center(
          child: Text(
            text,
            style: textColor == null
                ? AppStyles.styleSemiBold18
                    .copyWith(color: const Color(0xFFFFFFFF))
                : AppStyles.styleSemiBold18,
          ),
        ),
      ),
    );
  }
}
