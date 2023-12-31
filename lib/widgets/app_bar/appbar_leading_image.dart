import 'package:RideFlow/core/utils/size_utils.dart';
import 'package:RideFlow/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';

class AppbarLeadingImage extends StatelessWidget {
  AppbarLeadingImage({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  final String? imagePath;

  final EdgeInsetsGeometry? margin;

  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath,
          height: 27.v,
          width: 32.h,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
