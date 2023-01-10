import 'controller/loginumkmtwo_controller.dart';
import 'package:flutter/material.dart';
import 'package:hvest/core/app_export.dart';
import 'package:hvest/widgets/app_bar/appbar_image.dart';
import 'package:hvest/widgets/app_bar/appbar_subtitle.dart';
import 'package:hvest/widgets/app_bar/custom_app_bar.dart';
import 'package:hvest/widgets/custom_button.dart';

class LoginumkmtwoScreen extends GetWidget<LoginumkmtwoController> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _inputController = TextEditingController();
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
                            imagePath: ImageConstant.imgEllipse21400x428,
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
                            leadingWidth: 56,
                            leading: AppbarImage(
                              height: getVerticalSize(
                                41.00,
                              ),
                              width: getHorizontalSize(
                                37.00,
                              ),
                              imagePath: ImageConstant.imgHvest2x1,
                              margin: getMargin(
                                left: 19,
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
            Container(
              margin: getMargin(
                left: 21,
                top: 61,
                right: 18,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: getHorizontalSize(
                      106.00,
                    ),
                    padding: getPadding(
                      top: 7,
                      bottom: 7,
                    ),
                    decoration: AppDecoration.outlineGray3001.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgMenu,
                          height: getVerticalSize(
                            30.00,
                          ),
                          width: getHorizontalSize(
                            40.00,
                          ),
                          margin: getMargin(
                            top: 5,
                            bottom: 5,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            bottom: 1,
                          ),
                          child: Text(
                            "lbl_62".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsBold2652,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      276.00,
                    ),
                    margin: getMargin(
                      left: 6,
                    ),
                    padding: getPadding(
                      left: 10,
                      top: 9,
                      right: 10,
                      bottom: 9,
                    ),
                    decoration: AppDecoration.txtOutlineGray300.copyWith(
                      borderRadius: BorderRadiusStyle.txtRoundedBorder8,
                    ),
                    child: TextField(
                      controller: _inputController,
                      onSubmitted: null,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Ketik nomor HP anda",
                        labelText: 'HP',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CustomButton(
              onTap: () {
                onTapButtonMasukOtp();
              },
              height: 64,
              width: 388,
              text: "lbl_masuk".tr,
              margin: getMargin(
                top: 43,
                bottom: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }

  onTapButtonMasukOtp() {
    Get.toNamed(AppRoutes.otploginScreen);
  }
}
