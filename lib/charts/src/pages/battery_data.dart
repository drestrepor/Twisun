import 'package:flutter/material.dart';

import 'package:login_twisun/charts/providers/provider_data.dart';
import 'package:login_twisun/charts/src/functions/charts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BatChart extends StatelessWidget {
  late List<Battery_state> batdata;
  late TooltipBehavior _tooltipBehavior;

  @override
  Widget build(BuildContext context) {
    dProvider;
    batdata = dProvider.getBats();
    _tooltipBehavior = TooltipBehavior(enable: true);

    return SafeArea(
        child: Scaffold(
      body: SfCartesianChart(
        primaryXAxis: DateTimeAxis(title: AxisTitle(text: 'Hora')),
        primaryYAxis: NumericAxis(interval: 0.1),
        title: ChartTitle(text: 'Carga de la batería'),
        tooltipBehavior: _tooltipBehavior,
        series: <ChartSeries>[
          LineSeries<Battery_state, DateTime>(
              dataSource: batdata,
              xValueMapper: (Battery_state battery, _) => battery.timestamp,
              yValueMapper: (Battery_state battery, _) => battery.soc,
              dataLabelSettings: DataLabelSettings(isVisible: true),
              enableTooltip: true)
        ],
      ),
    ));
  }

  setMessage() {
    print('Action Button');
  }
}

class BatCharTempr extends StatelessWidget {
  late List<Battery_state> batdata;
  late TooltipBehavior _tooltipBehavior;

  @override
  Widget build(BuildContext context) {
    dProvider;
    batdata = dProvider.getBats();
    _tooltipBehavior = TooltipBehavior(enable: true);

    return SafeArea(
        child: Scaffold(
      body: SfCartesianChart(
        primaryXAxis: DateTimeAxis(title: AxisTitle(text: 'Hora')),
        primaryYAxis: NumericAxis(interval: 0.1),
        title: ChartTitle(text: 'Temperatura de la batería'),
        tooltipBehavior: _tooltipBehavior,
        series: <ChartSeries>[
          LineSeries<Battery_state, DateTime>(
              dataSource: batdata,
              xValueMapper: (Battery_state battery, _) => battery.timestamp,
              yValueMapper: (Battery_state battery, _) => battery.batt_temp,
              dataLabelSettings: DataLabelSettings(isVisible: true),
              enableTooltip: true)
        ],
      ),
    ));
  }

  setMessage() {
    print('Action Button');
  }
}
