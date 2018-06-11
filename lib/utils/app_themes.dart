import 'package:flutter/material.dart';
import 'package:subscriptions_tracker/utils/app_color_palette.dart';

class AppThemes {
  String themeName;
  ThemeData themeData;

  AppThemes(this.themeName, this.themeData);

  static AppThemes light(BuildContext context) {
    return new AppThemes(
      'Light',
      new ThemeData(
          accentColor: AppColorPalette.red,
          accentColorBrightness: Brightness.dark,
          brightness: Brightness.light,
          fontFamily: 'VarelaRound',
          scaffoldBackgroundColor: Colors.white,
          bottomAppBarColor: Colors.white,
          iconTheme: new IconThemeData(color: Colors.black),
          primaryIconTheme: new IconThemeData(color: AppColorPalette.grey),
          canvasColor: Colors.white,
          /*primaryTextTheme: Theme
            .of(context)
            .primaryTextTheme
            .copyWith(
              body2: new TextStyle(color: Colors.black),
              body1: new TextStyle(color: AppColorPalette.darkGrey),
              subhead: new TextStyle(color: Colors.white),
            )
            .apply(),*/
          primaryColor: AppColorPalette.red,
          primaryColorLight: AppColorPalette.grey,
          primaryColorDark: AppColorPalette.grey,
          accentIconTheme: new IconThemeData(color: Colors.white),
          primaryColorBrightness: Brightness.dark),
    );
  }

  static AppThemes dark(BuildContext context) {
    return new AppThemes(
      'Dark',
      new ThemeData(
        backgroundColor: Colors.white,
        accentColor: AppColorPalette.red,
        accentColorBrightness: Brightness.dark,
        brightness: Brightness.dark,
        fontFamily: 'VarelaRound',
        scaffoldBackgroundColor: Colors.white,
        bottomAppBarColor: Colors.white,
        iconTheme: new IconThemeData(color: Colors.black),
        primaryIconTheme: new IconThemeData(color: AppColorPalette.grey),
        canvasColor: Colors.white,
        /*primaryTextTheme: Theme
            .of(context)
            .primaryTextTheme
            .copyWith(
              body2: new TextStyle(color: Colors.black),
              body1: new TextStyle(color: AppColorPalette.darkGrey),
              subhead: new TextStyle(color: Colors.white),
            )
            .apply(),*/
        primaryColor: AppColorPalette.lightGrey,
        primaryColorLight: AppColorPalette.grey,
        primaryColorDark: AppColorPalette.grey,
        accentIconTheme: new IconThemeData(color: Colors.white),
      ),
    );
  }
}
