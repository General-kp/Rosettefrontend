import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SplineGraph extends StatelessWidget {
  Color color;
  SplineGraph({super.key,required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
            width:180,
            height: 100,
              child: SfCartesianChart(
                  // Initialize category axis
                  primaryXAxis: CategoryAxis(
                    isVisible: false,
                  ),
                  primaryYAxis: NumericAxis(
                    isVisible: false,
                  ),
                  plotAreaBorderWidth: 0,
                  series: <SplineSeries<SalesData, String>>[
                    SplineSeries<SalesData, String>(
                      // Bind data source
                      dataSource: <SalesData>[
                        SalesData('Jan', 20),
                        SalesData('Feb', 70),
                        SalesData('Mar', 84),
                        SalesData('Apr', 30),
                        SalesData('May', 50),
                        SalesData('Jun', 60),
                        SalesData('July', 70),
                        SalesData('Aug', 84),
                        SalesData('Sep', 30),
                        SalesData('Oct', 50),
                      ],
                      xValueMapper: (SalesData sales, _) => sales.year,
                      yValueMapper: (SalesData sales, _) => sales.sales,
                      dataLabelSettings: DataLabelSettings(isVisible: false),
                      color:color,
                    )
                  ]),
            );
  }
}
class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
