import 'controller/loginumkmone_controller.dart';
import 'package:flutter/material.dart';
import 'package:hvest/core/app_export.dart';
import 'package:hvest/widgets/app_bar/appbar_image.dart';
import 'package:hvest/widgets/app_bar/appbar_subtitle.dart';
import 'package:hvest/widgets/app_bar/custom_app_bar.dart';
import 'package:hvest/widgets/custom_button.dart';

class LoginumkmoneScreen extends GetWidget<LoginumkmoneController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      body: Container(
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: getVerticalSize(
                418.00,
              ),
              width: size.width,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: getVerticalSize(
                        400.00,
                      ),
                      width: size.width,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgEllipse21,
                            height: getVerticalSize(
                              400.00,
                            ),
                            width: getHorizontalSize(
                              428.00,
                            ),
                            alignment: Alignment.center,
                          ),
                          CustomAppBar(
                            height: getVerticalSize(
                              56.00,
                            ),
                            leadingWidth: 57,
                            leading: AppbarImage(
                              height: getVerticalSize(
                                41.00,
                              ),
                              width: getHorizontalSize(
                                37.00,
                              ),
                              imagePath: ImageConstant.imgHvest2x1,
                              margin: getMargin(
                                left: 20,
                                top: 3,
                                bottom: 3,
                              ),
                            ),
                            title: AppbarSubtitle(
                              text: "lbl_hvest2".tr,
                              margin: getMargin(
                                left: 6,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgRevenuetwocolor,
                    height: getSize(
                      305.00,
                    ),
                    width: getSize(
                      305.00,
                    ),
                    alignment: Alignment.bottomCenter,
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                top: 27,
              ),
              child: Text(
                "msg_selamat_datang_di".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsSemiBold30,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: getHorizontalSize(
                  339.00,
                ),
                margin: getMargin(
                  left: 20,
                  top: 16,
                ),
                child: Text(
                  "msg_solusi_tepat_untuk".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsRegular20Gray500,
                ),
              ),
            ),
            CustomButton(
              onTap: () {
                onTapButtonMasukumkm();
              },
              height: 64,
              width: 388,
              text: "lbl_masuk".tr,
              margin: getMargin(
                top: 85,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 16,
              ),
              child: Text(
                "lbl_atau".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsRegular20Black900,
              ),
            ),
            CustomButton(
              onTap: () {
                onTapButtonDaftar();
              },
              height: 64,
              width: 389,
              text: "lbl_daftar_usaha".tr,
              margin: getMargin(
                top: 15,
                bottom: 5,
              ),
              variant: ButtonVariant.OutlineBlue700,
              fontStyle: ButtonFontStyle.PoppinsSemiBold24Blue700,
            ),
          ],
        ),
      ),
    );
  }

  onTapButtonDaftar() {
    Get.toNamed(AppRoutes.registerumkmScreen);
  }

  onTapButtonMasukumkm() {
    Get.toNamed(AppRoutes.loginumkmtwoScreen);
  }
}
