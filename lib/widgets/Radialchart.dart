import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class RadialChart extends StatelessWidget {
  RadialChart({super.key});
  final List<ChartData> chartData = [
    ChartData(1924, 90, '100%', Colors.blue),
    ChartData(1925, 50, '100%', Colors.orange),
    ChartData(1926, 70, '100%', Colors.green),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width:110,
      height:110,
      child: SfCircularChart(
        legend: Legend(isVisible: false),
        series: <RadialBarSeries<ChartData, int>>[
          RadialBarSeries<ChartData, int>(
            useSeriesColor: true,
            radius: "100%",
            innerRadius: "40%",
            trackOpacity: 0.3,
            gap: "18%",
            cornerStyle: CornerStyle.bothCurve,
            dataSource: chartData,
            pointRadiusMapper: (ChartData data, _) => data.text,
            pointColorMapper: (ChartData data, _) => data.color,
            xValueMapper: (ChartData sales, _) => sales.x,
            yValueMapper: (ChartData sales, _) => sales.y,
            maximumValue: 100,
            dataLabelSettings: DataLabelSettings(isVisible: false),
          ),
        ],
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, this.text, this.color);
  final int x;
  final int y;
  final String text;
  final Color color;
}
