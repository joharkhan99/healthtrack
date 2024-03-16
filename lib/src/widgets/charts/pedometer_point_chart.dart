/// Line chart example
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class PedometerPointChart extends StatelessWidget {
  final List<TimeSeriesSales> seriesList;

  const PedometerPointChart(this.seriesList, {super.key});

  @override
  Widget build(BuildContext context) {
    // return charts.LineChart(
    //   _createSampleData(seriesList),
    //   animate: true,
    //   defaultRenderer: charts.LineRendererConfig(includePoints: true),
    // );

    return charts.TimeSeriesChart(
      _createSampleData(
        seriesList,
      ),
      animate: true,
      defaultRenderer: charts.LineRendererConfig(includePoints: true),
      primaryMeasureAxis: const charts.NumericAxisSpec(
        tickProviderSpec: charts.BasicNumericTickProviderSpec(zeroBound: false),
      ),
    );
  }

  static List<charts.Series<TimeSeriesSales, DateTime>> _createSampleData(List<TimeSeriesSales> data) {
    return [
      charts.Series<TimeSeriesSales, DateTime>(
        id: 'Sales',
        domainFn: (TimeSeriesSales sales, _) => sales.time,
        measureFn: (TimeSeriesSales sales, _) => sales.sales,
        data: data,
        colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault.lighter,
        fillColorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
        radiusPxFn: (datum, index) => 5,
      )
    ];
  }
}

class TimeSeriesSales {
  final DateTime time;
  final double sales;

  TimeSeriesSales(this.time, this.sales);
}
