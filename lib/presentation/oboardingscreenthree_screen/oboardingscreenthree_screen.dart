import 'controller/oboardingscreenthree_controller.dart';
import 'package:flutter/material.dart';
import 'package:hvest/core/app_export.dart';
import 'package:hvest/widgets/custom_button.dart';

class OboardingscreenthreeScreen
    extends GetWidget<OboardingscreenthreeController> {
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
                      597.00,
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
                              left: 53,
                              right: 52,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_raih_keuntungan".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold32,
                                ),
                                Container(
                                  width: getHorizontalSize(
                                    321.00,
                                  ),
                                  margin: getMargin(
                                    top: 5,
                                  ),
                                  child: Text(
                                    "msg_dengan_adanya_kerjasama".tr,
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
                          imagePath: ImageConstant.imgTeamsuccesstwo500x428,
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
                  //     bottom: 108,
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
              svgPath: ImageConstant.imgFrame53BlueA4008x152,
              height: getVerticalSize(
                8.00,
              ),
              width: getHorizontalSize(
                152.00,
              ),
              margin: getMargin(
                top: 53,
              ),
            ),
            CustomButton(
              onTap: () {
                onTapOboardingscreenthreeScreen();
              },
              height: 66,
              width: 388,
              text: "lbl_selanjutnya".tr,
              margin: getMargin(
                top: 23,
              ),
            ),
          ],
        ),
      ),
    );
  }

  onTapOboardingscreenthreeScreen() {
    Get.toNamed(AppRoutes.roleScreen);
  }
}
