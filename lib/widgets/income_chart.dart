import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pieTouchResponse) {
            activeIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
              showTitle: false,
              radius: activeIndex == 0 ? 40 : 30,
              value: 40,
              color: const Color(0xFF208CC8)),
          PieChartSectionData(
              showTitle: false,
              radius: activeIndex == 1 ? 40 : 30,
              value: 25,
              color: const Color(0xFF4EB7F2)),
          PieChartSectionData(
              showTitle: false,
              radius: activeIndex == 2 ? 40 : 30,
              value: 20,
              color: const Color(0xFF064061)),
          PieChartSectionData(
              showTitle: false,
              radius: activeIndex == 3 ? 40 : 30,
              value: 22,
              color: const Color(0xFFE2DECD)),
        ]);
  }
}
