import 'package:cosmos_foundation/models/structs/standard_theme_struct.dart';
import 'package:cosmos_foundation/models/structs/states_control_theme_struct.dart';
import 'package:cosmos_foundation/models/structs/theme_color_struct.dart';
import 'package:flutter/material.dart';
import 'package:tws_main/core/constants/k_assets.dart';
import 'package:tws_main/core/constants/k_colors.dart';
import 'package:tws_main/core/theme/theme_base.dart';

class DarkTheme extends ThemeBase {
  static const String identifier = 'dark-flat-theme';

  const DarkTheme()
      : super(
          identifier,
          loginLogo: KAssets.fullLogoWhiteWebp,
          masterLayoutMenuLogo: KAssets.wideLogoBlackWebp,
          frameListenerColor: KColors.warmWhite,
          masterLayoutStruct: const ThemeColorStruct(
            KColors.oceanBlue,
            KColors.warmWhite,
            Colors.transparent,
          ),
          masterLayoutMenuButtonStruct: const StateControlThemeStruct(
            mainStruct: StandardThemeStruct(
              background: Colors.transparent,
              foreground: KColors.warmWhite,
              textStyle: TextStyle(
                fontSize: 14,
              ),
            ),
            hoverStruct: StandardThemeStruct(
              background: Colors.white10
            ),
            selectStruct: StandardThemeStruct(
              background: Colors.white10,
              foreground: KColors.warmWhite,
            ),
          ),
          pageColorStruct: const ThemeColorStruct(
            KColors.lightDark,
            KColors.warmWhite,
            KColors.oceanBlue,
            onColorAlt: KColors.darkGrey,
          ),
          primaryControlColorStruct: const ThemeColorStruct(
            Colors.transparent,
            KColors.darkGrey,
            KColors.oceanBlue,
            onColorAlt: KColors.warmWhite,
          ),
          primaryDisabledControlColorStruct: const ThemeColorStruct(
            Colors.transparent,
            KColors.darkGrey,
            KColors.darkGrey,
          ),
          primaryErrorControlColorStruct: const ThemeColorStruct(
            Colors.transparent,
            KColors.darkGrey,
            KColors.deepWine,
          ),
        );
}
