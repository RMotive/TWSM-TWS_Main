import 'package:cosmos_foundation/helpers/theme.dart';
import 'package:cosmos_foundation/models/structs/theme_color_struct.dart';
import 'package:flutter/material.dart';
import 'package:tws_main/core/theme/theme_base.dart';

class TwsDisplayFlat extends StatelessWidget {
  final String display;
  final double? height;
  final double? width;
  final double? verticalPadding;
  final double? maxHeight;

  const TwsDisplayFlat({
    super.key,
    this.width,
    this.height,
    this.maxHeight,
    this.verticalPadding,
    required this.display,
  });

  @override
  Widget build(BuildContext context) {
    ThemeColorStruct errorStruct = getTheme<ThemeBase>().primaryErrorControlColorStruct;

    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: maxHeight ?? double.infinity,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.fromBorderSide(
            BorderSide(
              color: errorStruct.hlightColor,
              width: 2,
            ),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: SizedBox(
          width: width,
          height: height,
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: verticalPadding ?? (height != null ? 0 : 8),
              horizontal: 8,
            ),
            child: SingleChildScrollView(
              child: Center(
                child: Text(display),
              ),
            ),
          ),
        ),
      ),
    );
  }
}