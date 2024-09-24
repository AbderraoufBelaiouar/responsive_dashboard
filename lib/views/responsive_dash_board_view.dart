import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/widgets/dash_board_desktop_layout.dart';
import 'package:responsive_dashboard/widgets/dash_board_mobile_layout.dart';
import 'package:responsive_dashboard/widgets/dash_board_tablet_layout.dart';

class ResponsiveDashBoardView extends StatelessWidget {
  const ResponsiveDashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: AdaptiveLayout(
        mobileLayout: (BuildContext context) => const DashBoardMobileLayout(),
        tabletLayout: (BuildContext context) => const DashBoardTabletLayout(),
        desktopLayout: (BuildContext context) => const DashBoardDesktopLayout(),
      ),
    );
  }
}
