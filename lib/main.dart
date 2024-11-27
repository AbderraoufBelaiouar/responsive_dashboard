
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/responsive_dash_board_view.dart';

void main() {
  runApp(const ResponsiveDashboard());
}

class ResponsiveDashboard extends StatelessWidget {
  const ResponsiveDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveDashBoardView(),
    );
  }
}
