import 'controller/login_investor_controller.dart';
import 'package:flutter/material.dart';
import 'package:hvest/core/app_export.dart';
import 'package:hvest/widgets/custom_button.dart';

class LoginInvestorScreen extends GetWidget<LoginInvestorController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.gray100,
      body: Container(
        width: size.width,
        padding: getPadding(
          left: 19,
          right: 19,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: getVerticalSize(
                385.00,
              ),
              width: getHorizontalSize(
                323.00,
              ),
              margin: getMargin(
                top: 29,
              ),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgHvest2x1,
                          height: getVerticalSize(
                            71.00,
                          ),
                          width: getHorizontalSize(
                            64.00,
                          ),
                          margin: getMargin(
                            top: 5,
                            bottom: 6,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 11,
                          ),
                          child: Text(
                            "lbl_hvest2".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsMedium5524,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgTeambuildingtwo,
                    height: getSize(
                      323.00,
                    ),
                    width: getSize(
                      323.00,
                    ),
                    alignment: Alignment.topCenter,
                  ),
                ],
              ),
            ),
            Container(
              width: getHorizontalSize(
                363.00,
              ),
              margin: getMargin(
                top: 36,
              ),
              child: Text(
                "msg_bangkitkan_umkm".tr,
                maxLines: null,
                textAlign: TextAlign.center,
                style: AppStyle.txtPoppinsRegular20,
              ),
            ),
            CustomButton(
              onTap: () {
                onTapLoginInvestorScreen();
              },
              height: 64,
              width: 388,
              text: "lbl_masuk".tr,
              margin: getMargin(
                top: 43,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 18,
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
                onTapLoginInvestorScreen1();
              },
              height: 64,
              width: 389,
              text: "lbl_daftar".tr,
              margin: getMargin(
                top: 17,
              ),
              variant: ButtonVariant.OutlineBlue700,
              fontStyle: ButtonFontStyle.PoppinsSemiBold24Blue700,
            ),
          ],
        ),
      ),
    );
  }

  onTapLoginInvestorScreen() {
    Get.toNamed(AppRoutes.loginInvestorOneScreen);
  }

  onTapLoginInvestorScreen1() {
    Get.toNamed(AppRoutes.daftarInvestorScreen);
  }
}
