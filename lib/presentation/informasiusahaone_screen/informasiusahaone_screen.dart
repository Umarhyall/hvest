import 'controller/informasiusahaone_controller.dart';
import 'package:flutter/material.dart';
import 'package:hvest/core/app_export.dart';
import 'package:hvest/widgets/app_bar/appbar_image.dart';
import 'package:hvest/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:hvest/widgets/app_bar/custom_app_bar.dart';
import 'package:hvest/widgets/custom_button.dart';
import 'package:hvest/widgets/custom_text_form_field.dart';

class InformasiusahaoneScreen extends GetWidget<InformasiusahaoneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                height: getVerticalSize(119.00),
                leadingWidth: 51,
                leading: AppbarImage(
                    height: getSize(32.00),
                    width: getSize(32.00),
                    svgPath: ImageConstant.imgArrowleft32x32,
                    margin: getMargin(left: 19, top: 55, bottom: 32),
                    onTap: onTapArrowleft3),
                title: AppbarSubtitle1(
                    text: "lbl_informasi_usaha".tr,
                    margin: getMargin(left: 18, top: 53, bottom: 29)),
                styleType: Style.bgFillBlueA400),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: getVerticalSize(891.00),
                        width: getHorizontalSize(389.00),
                        margin: getMargin(left: 19, top: 24, right: 20),
                        child: Stack(alignment: Alignment.center, children: [
                          CustomButton(
                              height: 64,
                              width: 388,
                              text: "lbl_simpan".tr,
                              margin: getMargin(bottom: 126),
                              alignment: Alignment.bottomCenter),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(left: 1),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("lbl_nama_usaha".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtPoppinsSemiBold20),
                                        CustomTextFormField(
                                            width: 388,
                                            focusNode: FocusNode(),
                                            controller: controller
                                                .namaUsahaOneController,
                                            hintText: "msg_tulis_nama_usaha".tr,
                                            margin: getMargin(top: 8)),
                                        Padding(
                                            padding: getPadding(top: 25),
                                            child: Text("lbl_bidang_usaha".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsSemiBold20)),
                                        CustomTextFormField(
                                            width: 388,
                                            focusNode: FocusNode(),
                                            controller: controller
                                                .bidangUsahaOneController,
                                            hintText:
                                                "msg_tulis_bidang_usaha".tr,
                                            margin: getMargin(top: 6)),
                                        Container(
                                            width: getHorizontalSize(388.00),
                                            margin: getMargin(top: 23),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder15),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("lbl_alamat_usaha".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsSemiBold20),
                                                  CustomTextFormField(
                                                      width: 388,
                                                      focusNode: FocusNode(),
                                                      controller: controller
                                                          .alamatController,
                                                      hintText:
                                                          "msg_tulis_alamat_usaha"
                                                              .tr,
                                                      margin: getMargin(top: 8),
                                                      textInputAction:
                                                          TextInputAction.done)
                                                ])),
                                        Padding(
                                            padding: getPadding(top: 25),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                      "msg_saya_memiliki_kartu"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsSemiBold18),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgCheckmark24x24,
                                                      height: getSize(24.00),
                                                      width: getSize(24.00),
                                                      margin:
                                                          getMargin(bottom: 3))
                                                ])),
                                        Padding(
                                            padding: getPadding(top: 24),
                                            child: Text(
                                                "msg_upload_foto_npwp".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsSemiBold20)),
                                        Container(
                                            width: getHorizontalSize(388.00),
                                            margin: getMargin(top: 5),
                                            padding: getPadding(
                                                left: 97,
                                                top: 85,
                                                right: 97,
                                                bottom: 85),
                                            decoration: AppDecoration
                                                .outlineGray3002
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder19),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgUpload,
                                                      height: getVerticalSize(
                                                          48.00),
                                                      width: getHorizontalSize(
                                                          57.00),
                                                      margin:
                                                          getMargin(top: 6)),
                                                  Container(
                                                      width: getHorizontalSize(
                                                          192.00),
                                                      margin:
                                                          getMargin(top: 15),
                                                      child: RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                        "msg_upload_foto_kartu2"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                16),
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        fontWeight:
                                                                            FontWeight.w400)),
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_maks_5mb"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .redA100,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                16),
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        fontWeight:
                                                                            FontWeight.w400))
                                                              ]),
                                                          textAlign:
                                                              TextAlign.center))
                                                ])),
                                        Container(
                                            width: getHorizontalSize(388.00),
                                            margin: getMargin(top: 24),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder15),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("lbl_nomor_npwp".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsSemiBold20),
                                                  CustomButton(
                                                      height: 66,
                                                      width: 388,
                                                      text:
                                                          "msg_tulis_nomor_npwp"
                                                              .tr,
                                                      margin: getMargin(top: 8),
                                                      variant: ButtonVariant
                                                          .OutlineGray300,
                                                      shape: ButtonShape
                                                          .RoundedBorder15,
                                                      padding: ButtonPadding
                                                          .PaddingT18,
                                                      fontStyle: ButtonFontStyle
                                                          .PoppinsRegular20)
                                                ]))
                                      ])))
                        ]))))));
  }

  onTapArrowleft3() {
    Get.toNamed(AppRoutes.registerumkmthreeScreen);
  }
}
