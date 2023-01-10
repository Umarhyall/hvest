import 'controller/aktivasiumkm_controller.dart';
import 'package:flutter/material.dart';
import 'package:hvest/core/app_export.dart';
import 'package:hvest/widgets/custom_button.dart';

class AktivasiumkmScreen extends GetWidget<AktivasiumkmController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.gray100,
      body: Container(
        width: size.width,
        padding: getPadding(
          left: 18,
          top: 57,
          right: 18,
          bottom: 57,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "msg_bebek_geprek_bubu".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsSemiBold24Gray900,
            ),
            CustomImageView(
              svgPath: ImageConstant.imgOfficeparty,
              height: getVerticalSize(
                182.00,
              ),
              width: getHorizontalSize(
                321.00,
              ),
              margin: getMargin(
                top: 149,
              ),
            ),
            CustomImageView(
              svgPath: ImageConstant.imgGroup162,
              height: getVerticalSize(
                39.00,
              ),
              width: getHorizontalSize(
                343.00,
              ),
              margin: getMargin(
                top: 43,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 2,
                top: 7,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 2,
                    ),
                    child: Text(
                      "lbl_registrasi".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular20BlueA400,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 52,
                      bottom: 2,
                    ),
                    child: Text(
                      "lbl_verifikasi".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular20BlueA400,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: getPadding(
                      bottom: 2,
                    ),
                    child: Text(
                      "lbl_aktivasi".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular20BlueA400,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                top: 34,
              ),
              child: Text(
                "msg_selamat_akun_anda".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsSemiBold24Gray900,
              ),
            ),
            Container(
              width: getHorizontalSize(
                355.00,
              ),
              margin: getMargin(
                top: 6,
                bottom: 5,
              ),
              child: Text(
                "msg_sekarang_anda_bisa".tr,
                maxLines: null,
                textAlign: TextAlign.center,
                style: AppStyle.txtPoppinsRegular20Gray500,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: getPadding(
          left: 19,
          right: 21,
          bottom: 26,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              onTap: () {
                Get.toNamed(AppRoutes.homeumkmContainerScreen);
              },
              height: 66,
              width: 388,
              text: "lbl_selanjutnya".tr,
            ),
          ],
        ),
      ),
    );
  }
}
