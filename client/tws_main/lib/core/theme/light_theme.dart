import 'package:cosmos_foundation/models/structs/theme_color_struct.dart';
import 'package:flutter/material.dart';
import 'package:tws_main/core/constants/k_assets.dart';
import 'package:tws_main/core/constants/k_colors.dart';
import 'package:tws_main/core/theme/theme_base.dart';

class LightTheme extends ThemeBase {
  static const String identifier = 'light-flat-theme';

  const LightTheme()
      : super(
          identifier,
          fullLogoLocation: KAssets.fullLogoBlackWebp,
          frameListenerColor: KColors.deepPurple,
          pageColorStruct: const ThemeColorStruct(
            KColors.warmWhite,
            KColors.deepPurple,
            KColors.oceanBlue,
            onColorAlt: KColors.darkGrey,
          ),
          primaryControlColorStruct: const ThemeColorStruct(
            Colors.transparent,
            KColors.darkGrey,
            KColors.oceanBlue,
            onColorAlt: KColors.deepPurple,
          ),
          primaryDisabledControlColorStruct: const ThemeColorStruct(
            Colors.transparent,
            KColors.darkGrey,
            Colors.red,
          ),
          primaryErrorControlColorStruct: const ThemeColorStruct(
            Colors.transparent,
            KColors.darkGrey,
            Colors.red,
          ),
        );
}