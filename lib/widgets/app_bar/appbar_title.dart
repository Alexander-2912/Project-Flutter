import 'package:RideFlow/theme/custom_text_style.dart';
import 'package:RideFlow/theme/theme_helper.dart';
import 'package:flutter/material.dart';

class AppbarTitle extends StatelessWidget {
  AppbarTitle({
    Key? key,
    required this.text,
    this.margin,
    this.onTap,
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
          style: CustomTextStyles.titleLarge_1.copyWith(
            color: appTheme.black900,
          ),
        ),
      ),
    );
  }
}
