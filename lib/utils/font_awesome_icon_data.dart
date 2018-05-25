library font_awesome_icon_data;

import 'package:flutter/widgets.dart';

abstract class FontAwesomeIcons {
  // Main Screen
  static const IconData search = const _IconDataRegular(0xf002);
  static const IconData plus = const _IconDataRegular(0xf067);
  static const IconData bars = const _IconDataRegular(0xf0c9);
  static const IconData ellipsis_v = const _IconDataRegular(0xf142);

  // Drawer
  static const IconData angle_up = const _IconDataLight(0xf106);
  static const IconData angle_down = const _IconDataLight(0xf107);
  static const IconData user_cog = const _IconDataRegular(0xf4fe);
  static const IconData sign_in_alt = const _IconDataRegular(0xf2f6);
  static const IconData sign_out_alt = const _IconDataRegular(0xf2f5);
}

class _IconDataBrands extends IconData {
  const _IconDataBrands(int codePoint)
      : super(
          codePoint,
          fontFamily: 'FontAwesomeBrands',
        );
}

class _IconDataSolid extends IconData {
  const _IconDataSolid(int codePoint)
      : super(
          codePoint,
          fontFamily: 'FontAwesomeSolid',
        );
}

class _IconDataRegular extends IconData {
  const _IconDataRegular(int codePoint)
      : super(
          codePoint,
          fontFamily: 'FontAwesomeRegular',
        );
}

class _IconDataLight extends IconData {
  const _IconDataLight(int codePoint)
      : super(
          codePoint,
          fontFamily: 'FontAwesomeLight',
        );
}
