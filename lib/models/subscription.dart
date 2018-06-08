import 'package:flutter/material.dart';

class Subscription {
  final DateTime dateOfCreation;
  Color color;
  String name;
  Duration period;
  double fee;

  Subscription(
      this.dateOfCreation, this.color, this.name, this.period, this.fee);
}
