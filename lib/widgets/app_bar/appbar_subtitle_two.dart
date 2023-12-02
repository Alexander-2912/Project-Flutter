import 'package:RideFlow/theme/custom_text_style.dart';
import 'package:RideFlow/theme/theme_helper.dart';
import 'package:flutter/material.dart';

class AppbarSubtitleTwo extends StatelessWidget {
  AppbarSubtitleTwo({
    Key? key,
    required this.text,
    this.margin,
    this.onTap, required hintStyle,
  }) : super(
          key: key,
        );

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          style: CustomTextStyles.bodyMediumLight.copyWith(
            color: appTheme.black900,
          ),
        ),
      ),
    );
  }
}
