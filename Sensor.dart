import 'package:flutter/cupertino.dart';
import 'package:page_measurement/Measurement.dart';

class Sensor {
  final String name;
  final String model;
  final String unit;
  final Measurement measurement;

  Sensor({
    @required this.name,
    @required this.model,
    @required this.unit,
    @required this.measurement
});
}