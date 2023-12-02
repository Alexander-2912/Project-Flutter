import 'package:RideFlow/core/utils/image_constant.dart';
import 'package:RideFlow/core/utils/size_utils.dart';
import 'package:RideFlow/routes/app_routes.dart';
import 'package:RideFlow/theme/app_decoration.dart';
import 'package:RideFlow/theme/custom_text_style.dart';
import 'package:RideFlow/theme/theme_helper.dart';
import 'package:RideFlow/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';
import 'package:RideFlow/widgets/custom_elevated_button.dart';

class EWalletSuccessPaymentScreen extends StatelessWidget {
  EWalletSuccessPaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                          horizontal: 25.h, vertical: 20.v),
                      decoration: AppDecoration.fillBlue,
                      child: Text("Payment",
                          style: theme.textTheme.titleLarge)),
                  SizedBox(height: 99.v),
                  Text("Transaksi anda sukses!",
                      style: CustomTextStyles.displayLargeBlack900,
                      textAlign: TextAlign.center,),
                  SizedBox(height: 33.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgApproval,
                      height: 157.v,
                      width: 222.h),
                  SizedBox(height: 59.v),
                  Container(
                      width: 291.h,
                      margin: EdgeInsets.symmetric(horizontal: 34.h),
                      child: Text(
                          "Transaksi anda sedang diproses, maksimal memakan waktu sampai 24 jam.",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyLargeExtraLight)),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: buttonBack(context)));
  }


  Widget buttonBack(BuildContext context) {
    return CustomElevatedButton(
        text: "BACK",
        margin: EdgeInsets.only(left: 21.h, right: 23.h, bottom: 19.v),
        onPressed: () {
          back(context);
        });
  }

  back(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.eWalletMainScreen);
  }
}
