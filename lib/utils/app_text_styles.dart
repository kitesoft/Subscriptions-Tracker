import 'package:flutter/material.dart';
import 'package:subscriptions_tracker/utils/app_color_palettes.dart';

abstract class AppTextStyles {
  // Main Screen
  static TextStyle mainScreenTitle = new TextStyle(
      fontFamily: 'ProductSans',
      fontWeight: FontWeight.w400,
      fontSize: 40.0,
      color: Colors.black);

  static TextStyle addSubscriptionButton = new TextStyle(
      fontFamily: 'VarelaRound', fontWeight: FontWeight.w400, fontSize: 16.0);

  // Drawer
  //static TextStyle drawerItemAvatar = new TextStyle(color: Theme.of(context).scaffoldBackgroundColor);

  static TextStyle drawerItem = new TextStyle(color: Colors.black);
}
