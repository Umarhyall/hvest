import 'controller/identitaspemilik_controller.dart';
import 'package:flutter/material.dart';
import 'package:hvest/core/app_export.dart';
import 'package:hvest/widgets/app_bar/appbar_image.dart';
import 'package:hvest/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:hvest/widgets/app_bar/custom_app_bar.dart';
import 'package:hvest/widgets/custom_button.dart';
import 'package:hvest/widgets/custom_text_form_field.dart';

class IdentitaspemilikScreen extends GetWidget<IdentitaspemilikController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.gray100,
        appBar: CustomAppBar(
            height: getVerticalSize(119.00),
            leadingWidth: 51,
            leading: Container(
                height: getSize(32.00),
                width: getSize(32.00),
                margin: getMargin(left: 19, top: 55, bottom: 32),
                child: Stack(alignment: Alignment.center, children: [
                  AppbarImage(
                      height: getSize(32.00),
                      width: getSize(32.00),
                      svgPath: ImageConstant.imgArrowleft32x32,
                      onTap: onTapArrowleft),
                  AppbarImage(
                      height: getSize(32.00),
                      width: getSize(32.00),
                      svgPath: ImageConstant.imgArrowleft32x32)
                ])),
            title: AppbarSubtitle1(
                text: "msg_identitas_pemilik".tr,
                margin: getMargin(left: 18, top: 53, bottom: 29)),
            styleType: Style.bgFillBlueA400),
        body: SizedBox(
            width: size.width,
            child: SingleChildScrollView(
                child: Container(
                    height: getVerticalSize(1162.00),
                    width: getHorizontalSize(389.00),
                    margin: getMargin(left: 19, top: 11, right: 20),
                    child: Stack(alignment: Alignment.bottomCenter, children: [
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(right: 1),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("lbl_nama_pemilik".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsSemiBold20),
                                    Container(
                                        margin: getMargin(top: 8),
                                        padding: getPadding(all: 16),
                                        decoration: AppDecoration.outlineGray300
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder15),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding: getPadding(top: 3),
                                                  child: Text(
                                                      "lbl_taeyong_aldrian".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular20Black900)),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgUser,
                                                  height:
                                                      getVerticalSize(31.00),
                                                  width:
                                                      getHorizontalSize(34.00),
                                                  margin: getMargin(
                                                      top: 1, bottom: 1))
                                            ])),
                                    Container(
                                        width: getHorizontalSize(260.00),
                                        margin: getMargin(top: 9),
                                        child: Text("msg_nama_harus_ditulis".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtPoppinsRegular16)),
                                    Padding(
                                        padding: getPadding(top: 16),
                                        child: Text("msg_upload_foto_ktp".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtPoppinsSemiBold20)),
                                    Container(
                                        width: getHorizontalSize(388.00),
                                        margin: getMargin(top: 6),
                                        padding: getPadding(
                                            left: 142,
                                            top: 56,
                                            right: 142,
                                            bottom: 56),
                                        decoration: AppDecoration
                                            .outlineGray3002
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder19),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgUpload,
                                                  height:
                                                      getVerticalSize(48.00),
                                                  width:
                                                      getHorizontalSize(57.00),
                                                  margin: getMargin(top: 7)),
                                              Container(
                                                  width:
                                                      getHorizontalSize(104.00),
                                                  margin: getMargin(top: 15),
                                                  child: RichText(
                                                      text: TextSpan(children: [
                                                        TextSpan(
                                                            text:
                                                                "lbl_upload_ktp"
                                                                    .tr,
                                                            style: TextStyle(
                                                                color:
                                                                    ColorConstant
                                                                        .black900,
                                                                fontSize:
                                                                    getFontSize(
                                                                        16),
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400)),
                                                        TextSpan(
                                                            text: "lbl_maks_5mb"
                                                                .tr,
                                                            style: TextStyle(
                                                                color:
                                                                    ColorConstant
                                                                        .redA100,
                                                                fontSize:
                                                                    getFontSize(
                                                                        16),
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400))
                                                      ]),
                                                      textAlign:
                                                          TextAlign.center))
                                            ])),
                                    Container(
                                        width: getHorizontalSize(388.00),
                                        margin: getMargin(top: 18),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder15),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("lbl_nomor_ktp".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsSemiBold20),
                                              CustomTextFormField(
                                                  width: 388,
                                                  focusNode: FocusNode(),
                                                  controller: controller
                                                      .nomorKTPController,
                                                  hintText:
                                                      "msg_tulis_nomor_ktp".tr,
                                                  margin: getMargin(top: 7))
                                            ])),
                                    Container(
                                        width: getHorizontalSize(388.00),
                                        margin: getMargin(top: 19),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder15),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("lbl_tempat_lahir".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsSemiBold20),
                                              CustomTextFormField(
                                                  width: 388,
                                                  focusNode: FocusNode(),
                                                  controller: controller
                                                      .tempatLahirOneController,
                                                  hintText:
                                                      "msg_tulis_tempat_lahir"
                                                          .tr,
                                                  margin: getMargin(top: 6),
                                                  textInputAction:
                                                      TextInputAction.done)
                                            ])),
                                    Container(
                                        width: getHorizontalSize(388.00),
                                        margin: getMargin(top: 56),
                                        padding: getPadding(
                                            left: 16,
                                            top: 18,
                                            right: 16,
                                            bottom: 18),
                                        decoration: AppDecoration.outlineGray300
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder15),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("lbl_dd_mm_yy".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular20Gray40002)
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 18),
                                        child: Text("msg_upload_foto_diri".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtPoppinsSemiBold20)),
                                    Container(
                                        width: getHorizontalSize(388.00),
                                        margin: getMargin(top: 8),
                                        padding: getPadding(
                                            left: 122,
                                            top: 87,
                                            right: 122,
                                            bottom: 87),
                                        decoration: AppDecoration
                                            .outlineGray3002
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder19),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgUpload,
                                                  height:
                                                      getVerticalSize(48.00),
                                                  width:
                                                      getHorizontalSize(57.00),
                                                  margin: getMargin(top: 4)),
                                              Container(
                                                  width:
                                                      getHorizontalSize(143.00),
                                                  margin: getMargin(top: 14),
                                                  child: RichText(
                                                      text: TextSpan(children: [
                                                        TextSpan(
                                                            text:
                                                                "msg_upload_foto_anda"
                                                                    .tr,
                                                            style: TextStyle(
                                                                color:
                                                                    ColorConstant
                                                                        .black900,
                                                                fontSize:
                                                                    getFontSize(
                                                                        16),
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400)),
                                                        TextSpan(
                                                            text: "lbl_maks_5mb"
                                                                .tr,
                                                            style: TextStyle(
                                                                color:
                                                                    ColorConstant
                                                                        .redA100,
                                                                fontSize:
                                                                    getFontSize(
                                                                        16),
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400))
                                                      ]),
                                                      textAlign:
                                                          TextAlign.center))
                                            ]))
                                  ]))),
                      CustomButton(
                          height: 64,
                          width: 388,
                          text: "lbl_simpan".tr,
                          margin: getMargin(bottom: 384),
                          alignment: Alignment.bottomCenter)
                    ])))));
  }

  onTapArrowleft() {
    Get.toNamed(AppRoutes.registerumkmoneScreen);
  }
}
