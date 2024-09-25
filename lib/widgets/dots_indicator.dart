import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_dot_indicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (value) => Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: CustomDotIndicator(isActive: currentIndex == value),
        ),
      ),
    );
  }
}
