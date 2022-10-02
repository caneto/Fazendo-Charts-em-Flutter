import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartScreen extends StatefulWidget {
  const ChartScreen({Key? key}) : super(key: key);

  @override
  _ChartScreenState createState() => _ChartScreenState();
}

class _ChartScreenState extends State<ChartScreen> {
  final List<ChartData> chartData = [
    ChartData('Brsil', 70, 30, 40, 50),
    ChartData('Argentina', 40, 20, 10, 16),
    ChartData('Chile', 40, 20, 10, 22),
    ChartData('Uruguai', 10, 14, 22, 44),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Barra de Chart'),
      ),
      body: Center(
        child: Container(
          child: SfCartesianChart(
              primaryXAxis: CategoryAxis(),
              series: <ChartSeries>[
                StackedColumnSeries<ChartData, String>(
                    dataSource: chartData,
                    xValueMapper: (ChartData ch, _) => ch.x,
                    yValueMapper: (ChartData ch, _) => ch.y1),
                StackedColumnSeries<ChartData, String>(
                    dataSource: chartData,
                    xValueMapper: (ChartData ch, _) => ch.x,
                    yValueMapper: (ChartData ch, _) => ch.y2),
                StackedColumnSeries<ChartData, String>(
                    dataSource: chartData,
                    xValueMapper: (ChartData ch, _) => ch.x,
                    yValueMapper: (ChartData ch, _) => ch.y3),
                StackedColumnSeries<ChartData, String>(
                    dataSource: chartData,
                    xValueMapper: (ChartData ch, _) => ch.x,
                    yValueMapper: (ChartData ch, _) => ch.y4),
              ]),
        ),
      ),
    );
  }
}

class ChartData {
  final String x;
  final int y1;
  final int y2;
  final int y3;
  final int y4;
  ChartData(this.x, this.y1, this.y2, this.y3, this.y4);
}