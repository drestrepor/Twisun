import 'dart:convert';
import 'dart:io';

void main() {
  print("Hello");
}

class Battery_state {
  late double batt_temp;
  late int id;
  late double soc;
  late DateTime timestamp;

  Battery_state(double batt_temp, int id, double soc, DateTime timestamp) {
    this.batt_temp = batt_temp;
    this.id = id;
    this.soc = soc;
    this.timestamp = timestamp;
  }
}
