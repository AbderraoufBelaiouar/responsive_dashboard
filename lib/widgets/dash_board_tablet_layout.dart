import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_dash_board_drawer.dart';
import 'package:responsive_dashboard/widgets/dash_board_mobile_layout.dart';

class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 40,
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.only(top: 40.0),
            child: DashBoardMobileLayout(),
          ),
        ),
        SizedBox(
          width: 40,
        ),
      ],
    );
  }
}
