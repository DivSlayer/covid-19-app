import 'package:covid_19/constants.dart';
import 'package:covid_19/utils/dimension.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineReportChart extends StatelessWidget {
  const LineReportChart({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.3,
      child: LineChart(
        LineChartData(
          gridData: const FlGridData(show: false),
          borderData: FlBorderData(show: false),
          titlesData: const FlTitlesData(show: false),
          backgroundColor: Colors.white,
          lineTouchData: LineTouchData(
            touchTooltipData: LineTouchTooltipData(
              getTooltipColor: (spot) => kPrimaryColor.withOpacity(0.03),
              // Set the background color of the tooltip
              getTooltipItems: (List<LineBarSpot> touchedSpots) {
                return touchedSpots.map((LineBarSpot touchedSpot) {
                  return LineTooltipItem(
                    '${touchedSpot.y}',
                    TextStyle(
                      color: kTextColor,
                      fontSize: dimmension(12, context),
                    ),
                  );
                }).toList();
              },
            ),
          ),
          lineBarsData: [
            LineChartBarData(
              spots: getSpots(),
              isCurved: true,
              dotData: const FlDotData(show: false),
              belowBarData: BarAreaData(show: false),
              color: kPrimaryColor,
              barWidth: dimmension(4, context),
            )
          ],
        ),
      ),
    );
  }

  List<FlSpot> getSpots() {
    return const [
      FlSpot(0, .5),
      FlSpot(1, 1.5),
      FlSpot(2, .5),
      FlSpot(3, .7),
      FlSpot(4, .2),
      FlSpot(5, 2),
      FlSpot(6, 1.5),
      FlSpot(7, 1.7),
      FlSpot(8, 1),
      FlSpot(9, 2.8),
      FlSpot(10, 2.5),
      FlSpot(11, 2.65),
    ];
  }
}
