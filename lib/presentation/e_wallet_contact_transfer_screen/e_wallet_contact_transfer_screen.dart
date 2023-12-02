import 'package:RideFlow/core/utils/image_constant.dart';
import 'package:RideFlow/core/utils/size_utils.dart';
import 'package:RideFlow/routes/app_routes.dart';
import 'package:RideFlow/theme/custom_text_style.dart';
import 'package:RideFlow/theme/theme_helper.dart';
import 'package:RideFlow/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';
import 'package:RideFlow/widgets/app_bar/appbar_leading_image.dart';
import 'package:RideFlow/widgets/app_bar/appbar_title.dart';
import 'package:RideFlow/widgets/app_bar/custom_app_bar.dart';
import 'package:RideFlow/widgets/custom_elevated_button.dart';
import 'package:RideFlow/widgets/custom_text_form_field.dart';

class EWalletContactTransferScreen extends StatelessWidget {
  EWalletContactTransferScreen({Key? key}) : super(key: key);

  final TextEditingController nomorController = TextEditingController();

  final TextEditingController jumlahNominalController = TextEditingController();

  final TextEditingController notesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: appBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 39.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 0.h, right: 42.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgOfficePhone,
                                    height: 60.adaptSize,
                                    width: 60.adaptSize),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 24.h, top: 16.v, bottom: 19.v),
                                    child: Text("Transfer ke kontak",
                                        style: theme.textTheme.titleLarge))
                              ])),
                      SizedBox(height: 35.v),
                      nomor(context),
                      SizedBox(height: 16.v),
                      jumlahNominal(context),
                      SizedBox(height: 13.v),
                      notes(context),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: confirmButton(context)));
  }

  PreferredSizeWidget appBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlue600,
            margin: EdgeInsets.only(left: 16.h, top: 26.v, bottom: 24.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarTitle(text: "Transfer", margin: EdgeInsets.only(left: 13.h)),
        styleType: Style.bgFill);
  }

  onTapArrowLeft(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.eWalletMainScreen);
  }

  Widget nomor(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h, right: 17.h),
        child: Container(
          decoration: BoxDecoration(
          border: Border.all(color: Colors.black)
          ),
        child: CustomTextFormField(
            controller: nomorController,
            hintText: "No.Telp",
            hintStyle: CustomTextStyles.bodyLargeExtraLight,
            textStyle: CustomTextStyles.bodyMedium14,
            ))
        );
  }

  Widget jumlahNominal(BuildContext context) {
     return Padding(
        padding: EdgeInsets.only(left: 1.h, right: 17.h),
        child: Container(
          decoration: BoxDecoration(
          border: Border.all(color: Colors.black)
          ),
        child: CustomTextFormField(
            controller: jumlahNominalController,
            hintText: "Jumlah Nominal",
            hintStyle: CustomTextStyles.bodyLargeExtraLight,
            textStyle: CustomTextStyles.bodyMedium14,
            ))
        );
  }

  Widget notes(BuildContext context) {
     return Padding(
        padding: EdgeInsets.only(left: 1.h, right: 17.h),
        child: Container(
          decoration: BoxDecoration(
          border: Border.all(color: Colors.black)
          ),
        child: CustomTextFormField(
            controller: notesController,
            hintText: "Notes",
            hintStyle: CustomTextStyles.bodyLargeExtraLight,
            textStyle: CustomTextStyles.bodyMedium14,
            maxLines: 5,
            ))
        );
  }

  Widget confirmButton(BuildContext context) {
    return CustomElevatedButton(
        text: "CONFIRM",
        margin: EdgeInsets.only(left: 21.h, right: 23.h, bottom: 20.v),
        onPressed: () {
          toSuccess(context);
        });
  }


  toSuccess(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.eWalletSuccessPaymentScreen);
  }
}
