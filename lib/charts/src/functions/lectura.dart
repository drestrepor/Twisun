import 'dart:convert';
import 'dart:io';

import 'charts.dart';

class lectura {
  //Atributtes

  late double acceleration,
      batt_temp,
      capacity,
      charge_current,
      charge_time,
      consumption,
      coulomb,
      current,
      drivetime,
      energy,
      energy_rec,
      engine_temp,
      ext_temp,
      latitude,
      longitude,
      mass,
      mean_acc,
      mean_speed,
      net_signal,
      odometer,
      power_kw,
      range_est,
      range_full,
      range_ideal,
      regen_brake,
      run,
      soc,
      soh,
      speed,
      voltage;

  late int footbrake, freeram, id, operative_state, rpm, throttle;

  late String drivemode, user_name, vehicle_id;

  late DateTime timestamp;

  //Constructor

  lectura.fromJson(Map<String, dynamic> json) {
    this.acceleration = json['acceleration'];
    this.batt_temp = json['batt_temp'];
    this.capacity = json['capacity'];
    this.charge_current = json['charge_current'];
    this.charge_time = json['charge_time'];
    this.consumption = json['consumption'];
    this.coulomb = json['coulomb'];
    this.current = json['current'];
    this.drivetime = json['drivetime'];
    this.energy = json['energy'];
    this.energy_rec = json['energy_rec'];
    this.engine_temp = json['engine_temp'];
    this.ext_temp = json['ext_temp'];
    this.footbrake = json['footbrake'];
    this.freeram = json['freeram'];
    this.latitude = json['latitude'];
    this.longitude = json['longitude'];
    this.mass = json['mass'];
    this.mean_acc = json['mean_acc'];
    this.mean_speed = json['mean_speed'];
    this.net_signal = json['net_signal'];
    this.odometer = json['odometer'];
    this.power_kw = json['power_kw'];
    this.range_est = json['range_est'];
    this.range_full = json['range_full'];
    this.range_ideal = json['range_ideal'];
    this.regen_brake = json['regen_brake'];
    this.rpm = json['rpm'];
    this.run = json['run'];
    this.soc = json['soc'];
    this.soh = json['soh'];
    this.speed = json['speed'];
    this.throttle = json['throttle'];
    this.voltage = json['voltage'];

    this.id = json['id'];
    this.operative_state = json['operative_state'];

    this.drivemode = json['drivemode'];
    this.user_name = json['user_name'];
    this.vehicle_id = json['vehicle_id'];

    this.timestamp = HttpDate.parse(json['timestamp']);
  }
}

/**void main() {
  dProvider;
  List<lectura> lecturas = [];
  for (var lecturaX in dProvider.getOption) {
    lecturas.add(lectura.fromJson(lecturaX));
  }

  for (var lecturaX in lecturas) {
    print("ID: " + lecturaX.id.toString());
    print("Current batery: " + lecturaX.soc.toString());
    print("\n");
  } 

  Battery_state one =
      new Battery_state(lecturas[1].id, lecturas[1].soc, lecturas[1].timestamp);

  print(one.id.toString() +
      "  " +
      one.soc.toString() +
      "  " +
      one.timestamp.toString()); 
} **/
