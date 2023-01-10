import 'controller/registerumkmthree_controller.dart';
import 'package:flutter/material.dart';
import 'package:hvest/core/app_export.dart';

class RegisterumkmthreeScreen extends GetWidget<RegisterumkmthreeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Container(
                width: size.width,
                padding: getPadding(left: 19, top: 55, right: 19, bottom: 55),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleft,
                          height: getSize(32.00),
                          width: getSize(32.00),
                          onTap: () {
                            onTapImgArrowleft();
                          }),
                      Padding(
                          padding: getPadding(left: 1, top: 26),
                          child: Text("lbl_registrasi".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold32)),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 14),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 2),
                                        child: Text("lbl_registrasi".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsRegular20BlueA400)),
                                    Padding(
                                        padding:
                                            getPadding(left: 41, bottom: 2),
                                        child: Text("lbl_verifikasi".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsRegular20Bluegray100)),
                                    Padding(
                                        padding:
                                            getPadding(left: 53, bottom: 2),
                                        child: Text("lbl_aktivasi".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsRegular20Bluegray100))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 2, top: 1, right: 2),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    height: getVerticalSize(8.00),
                                    width: getHorizontalSize(115.00),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.blueA400,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(4.00)))),
                                Container(
                                    height: getVerticalSize(8.00),
                                    width: getHorizontalSize(115.00),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.gray500,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(4.00)))),
                                Container(
                                    height: getVerticalSize(8.00),
                                    width: getHorizontalSize(115.00),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.gray500,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(4.00))))
                              ])),
                      Container(
                          margin: getMargin(left: 1, top: 40, right: 1),
                          padding: getPadding(top: 23, bottom: 23),
                          decoration: AppDecoration.outlineGray3002.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder19),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgCheckmark38x38,
                                    height: getSize(38.00),
                                    width: getSize(38.00)),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 2, bottom: 4),
                                    child: Text("msg_identitas_pemilik".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtPoppinsSemiBold2107)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getVerticalSize(39.00),
                                    width: getHorizontalSize(30.00),
                                    margin: getMargin(left: 114))
                              ])),
                      Container(
                          margin: getMargin(left: 2, top: 28),
                          padding: getPadding(top: 23, bottom: 23),
                          decoration: AppDecoration.outlineGray3002.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder19),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgCheckmark38x38,
                                    height: getSize(38.00),
                                    width: getSize(38.00)),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 5, bottom: 1),
                                    child: Text("msg_informasi_rekening".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtPoppinsSemiBold2107)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getVerticalSize(39.00),
                                    width: getHorizontalSize(30.00),
                                    margin: getMargin(left: 25))
                              ])),
                      Container(
                          margin:
                              getMargin(left: 1, top: 27, right: 1, bottom: 5),
                          padding: getPadding(top: 23, bottom: 23),
                          decoration: AppDecoration.outlineGray3002.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder19),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgCheckmark,
                                    height: getSize(38.00),
                                    width: getSize(38.00)),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 2, bottom: 4),
                                    child: Text("lbl_informasi_usaha".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtPoppinsSemiBold2107)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getVerticalSize(39.00),
                                    width: getHorizontalSize(30.00),
                                    margin: getMargin(left: 115))
                              ]))
                    ]))));
  }

  onTapImgArrowleft() {
    Get.toNamed(AppRoutes.informasibankScreen);
  }
}
