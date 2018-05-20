import 'package:flutter/material.dart';

abstract class HelperFunctions {
  static void showInSnackBar(
      GlobalKey<ScaffoldState> scaffoldKey, String value) {
    scaffoldKey.currentState
        .showSnackBar(new SnackBar(content: new Text(value)));
  }
}
