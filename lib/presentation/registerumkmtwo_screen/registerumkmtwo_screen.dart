import 'controller/registerumkmtwo_controller.dart';
import 'package:flutter/material.dart';
import 'package:hvest/core/app_export.dart';

class RegisterumkmtwoScreen extends GetWidget<RegisterumkmtwoController> {
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
                      Container(
                          height: getVerticalSize(42.00),
                          width: getHorizontalSize(386.00),
                          margin: getMargin(left: 2, top: 14),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                        height: getVerticalSize(8.00),
                                        width: getHorizontalSize(115.00),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.blueA400,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(4.00))))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        height: getVerticalSize(8.00),
                                        width: getHorizontalSize(115.00),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray500,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(4.00))))),
                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                        height: getVerticalSize(8.00),
                                        width: getHorizontalSize(115.00),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray500,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(4.00))))),
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                        padding: getPadding(left: 9, top: 2),
                                        child: Text("lbl_registrasi".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsRegular20BlueA400))),
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Text("lbl_verifikasi".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsRegular20Bluegray100)),
                                Align(
                                    alignment: Alignment.topRight,
                                    child: Padding(
                                        padding: getPadding(right: 19),
                                        child: Text("lbl_aktivasi".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsRegular20Bluegray100))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(
                                                  left: 9, right: 19),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 2),
                                                        child: Text(
                                                            "lbl_registrasi".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsRegular20BlueA400)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 41,
                                                            bottom: 2),
                                                        child: Text(
                                                            "lbl_verifikasi".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsRegular20Bluegray100)),
                                                    Spacer(),
                                                    Padding(
                                                        padding: getPadding(
                                                            bottom: 2),
                                                        child: Text(
                                                            "lbl_aktivasi".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsRegular20Bluegray100))
                                                  ])),
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Container(
                                                        height: getVerticalSize(
                                                            8.00),
                                                        width:
                                                            getHorizontalSize(
                                                                115.00),
                                                        decoration: BoxDecoration(
                                                            color: ColorConstant
                                                                .blueA400,
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        4.00)))),
                                                    Container(
                                                        height: getVerticalSize(
                                                            8.00),
                                                        width:
                                                            getHorizontalSize(
                                                                115.00),
                                                        decoration: BoxDecoration(
                                                            color: ColorConstant
                                                                .gray500,
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        4.00)))),
                                                    Container(
                                                        height: getVerticalSize(
                                                            8.00),
                                                        width:
                                                            getHorizontalSize(
                                                                115.00),
                                                        decoration: BoxDecoration(
                                                            color: ColorConstant
                                                                .gray500,
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        4.00))))
                                                  ]))
                                        ]))
                              ])),
                      Container(
                          height: getVerticalSize(64.00),
                          width: getHorizontalSize(389.00),
                          margin: getMargin(left: 1, top: 45),
                          child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        margin: getMargin(right: 1),
                                        padding: getPadding(all: 9),
                                        decoration: AppDecoration.fillWhiteA700
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder19),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgCheckmark38x38,
                                                  height: getSize(38.00),
                                                  width: getSize(38.00),
                                                  margin: getMargin(top: 7))
                                            ]))),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 66, top: 14, bottom: 14),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      top: 2, bottom: 1),
                                                  child: Text(
                                                      "msg_identitas_pemilik"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsSemiBold2107)),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowright,
                                                  height:
                                                      getVerticalSize(35.00),
                                                  width:
                                                      getHorizontalSize(30.00))
                                            ])))
                              ])),
                      Container(
                          height: getVerticalSize(64.00),
                          width: getHorizontalSize(389.00),
                          margin: getMargin(left: 1, top: 45),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        height: getVerticalSize(64.00),
                                        width: getHorizontalSize(388.00),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.whiteA700,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(19.00))))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: GestureDetector(
                                        onTap: () {
                                          onTapRowcheckmarkone();
                                        },
                                        child: Padding(
                                            padding: getPadding(bottom: 10),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgCheckmark,
                                                      height: getSize(38.00),
                                                      width: getSize(38.00),
                                                      margin:
                                                          getMargin(top: 1)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 17,
                                                          top: 5,
                                                          bottom: 2),
                                                      child: Text(
                                                          "msg_informasi_rekening"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsSemiBold2107)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowright,
                                                      height: getVerticalSize(
                                                          35.00),
                                                      width: getHorizontalSize(
                                                          30.00),
                                                      margin: getMargin(
                                                          left: 25, bottom: 3))
                                                ]))))
                              ])),
                      Container(
                          margin: getMargin(left: 2, top: 45, bottom: 5),
                          padding: getPadding(
                              left: 1, top: 11, right: 1, bottom: 11),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder19),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgCheckmark,
                                    height: getSize(38.00),
                                    width: getSize(38.00),
                                    margin: getMargin(top: 1, bottom: 2)),
                                Padding(
                                    padding:
                                        getPadding(left: 17, top: 2, bottom: 7),
                                    child: Text("lbl_informasi_usaha".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtPoppinsSemiBold2107)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getVerticalSize(35.00),
                                    width: getHorizontalSize(30.00),
                                    margin: getMargin(left: 115, bottom: 6))
                              ]))
                    ]))));
  }

  onTapImgArrowleft() {
    Get.toNamed(AppRoutes.identitaspemilikScreen);
  }

  onTapRowcheckmarkone() {
    Get.toNamed(AppRoutes.informasibankScreen);
  }
}
