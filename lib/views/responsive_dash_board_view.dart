import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/widgets/custom_dash_board_drawer.dart';
import 'package:responsive_dashboard/widgets/dash_board_desktop_layout.dart';
import 'package:responsive_dashboard/widgets/dash_board_mobile_layout.dart';
import 'package:responsive_dashboard/widgets/dash_board_tablet_layout.dart';

class ResponsiveDashBoardView extends StatefulWidget {
  const ResponsiveDashBoardView({super.key});

  @override
  State<ResponsiveDashBoardView> createState() =>
      _ResponsiveDashBoardViewState();
}

class _ResponsiveDashBoardViewState extends State<ResponsiveDashBoardView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xffFAFAFA),
      drawer:
          SizeConfig.width < SizeConfig.tablet ? const CustomDrawer() : null,
      appBar: SizeConfig.width < SizeConfig.tablet
          ? AppBar(
              backgroundColor: const Color(0xFFFAFAFA),
              leading: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
              ),
            )
          : null,
      body: AdaptiveLayout(
        mobileLayout: (BuildContext context) => const DashBoardMobileLayout(),
        tabletLayout: (BuildContext context) => const DashBoardTabletLayout(),
        desktopLayout: (BuildContext context) => const DashBoardDesktopLayout(),
      ),
    );
  }
}
