import 'package:hvest/presentation/oboardingscreenthree_screen/oboardingscreenthree_screen.dart';

import 'controller/oboardingscreentwo_controller.dart';
import 'package:flutter/material.dart';
import 'package:hvest/core/app_export.dart';
import 'package:hvest/widgets/custom_button.dart';

class OboardingscreentwoScreen extends GetWidget<OboardingscreentwoController> {
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
              width: size.width,
              margin: getMargin(
                top: 41,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: getVerticalSize(
                      601.00,
                    ),
                    width: size.width,
                    margin: getMargin(
                      top: 11,
                    ),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: getPadding(
                              left: 55,
                              right: 54,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_jalin_kerjasama".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold32,
                                ),
                                Container(
                                  width: getHorizontalSize(
                                    317.00,
                                  ),
                                  margin: getMargin(
                                    top: 5,
                                  ),
                                  child: Text(
                                    "msg_bertemu_dengan_para".tr,
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
                          imagePath: ImageConstant.imgStartuptwocolor,
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
                  // SingleChildScrollView(
                  //   scrollDirection: Axis.horizontal,
                  //   padding: getPadding(
                  //     bottom: 112,
                  //   ),
                  //   child: IntrinsicWidth(
                  //     child: Container(
                  //       height: getVerticalSize(
                  //         500.00,
                  //       ),
                  //       width: getHorizontalSize(
                  //         1.00,
                  //       ),
                  //       child: Stack(
                  //         alignment: Alignment.centerLeft,
                  //         children: [
                  //           CustomImageView(
                  //             imagePath:
                  //                 ImageConstant.imgStartuptwocolor500x500,
                  //             height: getSize(
                  //               500.00,
                  //             ),
                  //             width: getSize(
                  //               500.00,
                  //             ),
                  //             alignment: Alignment.centerLeft,
                  //           ),
                  //           CustomImageView(
                  //             imagePath: ImageConstant.imgTeamsuccesstwo,
                  //             height: getSize(
                  //               500.00,
                  //             ),
                  //             width: getSize(
                  //               500.00,
                  //             ),
                  //             alignment: Alignment.centerLeft,
                  //             margin: getMargin(
                  //               left: 494,
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            CustomImageView(
              svgPath: ImageConstant.imgFrame53BlueA400,
              height: getVerticalSize(
                8.00,
              ),
              width: getHorizontalSize(
                152.00,
              ),
              margin: getMargin(
                top: 48,
              ),
            ),
            CustomButton(
              onTap: () {
                onTapOboardingscreentwoScreen();
              },
              height: 66,
              width: 388,
              text: "lbl_selanjutnya".tr,
              margin: getMargin(
                top: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }

  onTapOboardingscreentwoScreen() {
    Get.to(OboardingscreenthreeScreen(), transition: Transition.fadeIn);
  }
}
