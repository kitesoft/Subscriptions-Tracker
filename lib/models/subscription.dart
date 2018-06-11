import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Subscription {
  DateTime dateOfCreation;
  DateTime dateSubscribed;
  Color color;
  String name;
  Duration period;
  double fee;

  Subscription(this.dateOfCreation, this.dateSubscribed, this.color, this.name,
      this.period, this.fee);

  Subscription.fromFirestoreDocument(DocumentSnapshot document) {
    this.dateOfCreation = document['dateOfCreation'];
    this.dateOfCreation = document['dateSubscribed'];
    this.color = new Color(int.parse('0x' + document['color']));
    this.name = document['name'];
    this.period = new Duration(days: document['period']);
    this.fee = double.parse(document['fee'].toString());
  }
}
