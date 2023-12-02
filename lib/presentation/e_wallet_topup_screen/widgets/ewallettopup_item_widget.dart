import 'package:RideFlow/core/utils/image_constant.dart';
import 'package:RideFlow/core/utils/size_utils.dart';
import 'package:RideFlow/theme/app_decoration.dart';
import 'package:RideFlow/theme/theme_helper.dart';
import 'package:RideFlow/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';

class EwallettopupItemWidget extends StatelessWidget {
  const EwallettopupItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMagneticCard,
            height: 60.adaptSize,
            width: 60.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 57.h,
              top: 19.v,
              bottom: 21.v,
            ),
            child: Text(
              "Kartu Kredit",
              style: theme.textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }
}
