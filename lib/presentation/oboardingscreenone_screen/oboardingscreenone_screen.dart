import 'package:hvest/presentation/oboardingscreentwo_screen/oboardingscreentwo_screen.dart';

import 'controller/oboardingscreenone_controller.dart';
import 'package:flutter/material.dart';
import 'package:hvest/core/app_export.dart';
import 'package:hvest/widgets/custom_button.dart';

class OboardingscreenoneScreen extends GetWidget<OboardingscreenoneController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      body: Container(
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: getVerticalSize(
                596.00,
              ),
              width: size.width,
              margin: getMargin(
                top: 53,
              ),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: getPadding(
                        left: 62,
                        right: 62,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_tanam_modal".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsSemiBold32,
                          ),
                          Container(
                            width: getHorizontalSize(
                              303.00,
                            ),
                            margin: getMargin(
                              top: 8,
                            ),
                            child: Text(
                              "msg_sebuah_platform".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtPoppinsRegular1728,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgCoinstwocolor,
                    height: getVerticalSize(
                      500.00,
                    ),
                    width: getHorizontalSize(
                      428.00,
                    ),
                    alignment: Alignment.topCenter,
                  ),
                ],
              ),
            ),
            CustomImageView(
              svgPath: ImageConstant.imgFrame53,
              height: getVerticalSize(
                8.00,
              ),
              width: getHorizontalSize(
                152.00,
              ),
              margin: getMargin(
                top: 54,
              ),
            ),
            CustomButton(
              onTap: () {
                onTapOboardingscreenoneScreen();
              },
              height: 66,
              width: 388,
              text: "lbl_mulai".tr,
              margin: getMargin(
                top: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }

  onTapOboardingscreenoneScreen() {
    Get.to(OboardingscreentwoScreen(), transition: Transition.fadeIn);
  }
}
