import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_dash_board_drawer.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(flex: 1, child: CustomDrawer()),
        Expanded(flex: 3, child: Container()),
        Expanded(flex: 2, child: Container()),
      ],
    );
  }
}
