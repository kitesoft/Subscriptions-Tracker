import 'package:flutter/material.dart';
import 'package:subscriptions_tracker/utils/app_color_palette.dart';

abstract class AppTextStyles {
  // Main Screen
  static TextStyle mainScreenTitle = new TextStyle(
      fontFamily: 'ProductSans',
      fontWeight: FontWeight.w400,
      fontSize: 40.0,
      color: Colors.black);

  static TextStyle mainScreenNoConnectivityTitle = new TextStyle(
      fontFamily: 'ProductSans',
      fontWeight: FontWeight.w700,
      fontSize: 40.0,
      color: Colors.black);

  static TextStyle mainScreenNoConnectivitySubtitle = new TextStyle(
      fontFamily: 'ProductSans',
      fontWeight: FontWeight.w400,
      fontSize: 20.0,
      color: Colors.black);

  static TextStyle addSubscriptionButton = new TextStyle(
      fontFamily: 'VarelaRound', fontWeight: FontWeight.w400, fontSize: 16.0);

  // Drawer
  static TextStyle drawerItem = new TextStyle(color: Colors.black);

  static TextStyle drawerAccountName =
      new TextStyle(fontWeight: FontWeight.w700, color: Colors.black);

  static TextStyle drawerAccountEmail = new TextStyle(
      fontWeight: FontWeight.w400, color: AppColorPalette.darkGrey);
}
