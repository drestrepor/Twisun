import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:login_twisun/charts/src/functions/charts.dart';
import 'package:login_twisun/charts/src/functions/lectura.dart';

class _ProviderData {
  List<lectura> getOption = [];
  List<Battery_state> batts = [];
  _ProviderData() {
    loadData();
  }

  void loadData() {
    rootBundle.loadString('Data/returndata.json').then((value) {
      var datos = json.decode(value);
      if (datos != null) {
        datos.forEach((element) {
          final lecturaX = lectura.fromJson(element);
          getOption.add(lecturaX);
          print(lecturaX);
        });
      }
      for (var BatState in getOption) {
        Battery_state temp = Battery_state(
            BatState.batt_temp, BatState.id, BatState.soc, BatState.timestamp);
        batts.add(temp);
      }
    });
  }

  List<Battery_state> getBats() {
    return batts;
  }
}

final dProvider = new _ProviderData();
