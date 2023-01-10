import 'controller/informasiusaha_controller.dart';
import 'package:flutter/material.dart';
import 'package:hvest/core/app_export.dart';
import 'package:hvest/widgets/app_bar/appbar_image.dart';
import 'package:hvest/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:hvest/widgets/app_bar/custom_app_bar.dart';
import 'package:hvest/widgets/custom_button.dart';
import 'package:hvest/widgets/custom_text_form_field.dart';

class InformasiusahaScreen extends GetWidget<InformasiusahaController> {
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
                    onTap: onTapArrowleft2),
                title: AppbarSubtitle1(
                    text: "lbl_informasi_usaha".tr,
                    margin: getMargin(left: 18, top: 53, bottom: 29)),
                styleType: Style.bgFillBlueA400),
            body: Container(
                width: size.width,
                padding: getPadding(left: 20, top: 23, right: 20, bottom: 23),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("lbl_nama_usaha".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsSemiBold20),
                      CustomTextFormField(
                          width: 388,
                          focusNode: FocusNode(),
                          controller: controller.namaUsahaOneController,
                          hintText: "msg_tulis_nama_usaha".tr,
                          margin: getMargin(top: 8)),
                      Padding(
                          padding: getPadding(top: 25),
                          child: Text("lbl_bidang_usaha".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold20)),
                      CustomTextFormField(
                          width: 388,
                          focusNode: FocusNode(),
                          controller: controller.bidangUsahaOneController,
                          hintText: "msg_tulis_bidang_usaha".tr,
                          margin: getMargin(top: 6)),
                      Container(
                          width: getHorizontalSize(388.00),
                          margin: getMargin(top: 23),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder15),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("lbl_alamat_usaha".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsSemiBold20),
                                CustomTextFormField(
                                    width: 388,
                                    focusNode: FocusNode(),
                                    controller: controller.alamatController,
                                    hintText: "msg_tulis_alamat_usaha".tr,
                                    margin: getMargin(top: 8),
                                    textInputAction: TextInputAction.done)
                              ])),
                      Padding(
                          padding: getPadding(top: 19, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("msg_saya_memiliki_kartu".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsSemiBold18),
                                CustomImageView(
                                    svgPath: ImageConstant.imgMobile,
                                    height: getSize(24.00),
                                    width: getSize(24.00),
                                    margin: getMargin(bottom: 2),
                                    onTap: () {
                                      onTapImgMobile();
                                    })
                              ]))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 19, right: 21, bottom: 17),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomButton(height: 64, width: 388, text: "lbl_simpan".tr)
                ]))));
  }

  onTapImgMobile() {
    Get.toNamed(AppRoutes.informasiusahaoneScreen);
  }

  onTapArrowleft2() {
    Get.toNamed(AppRoutes.registerumkmthreeScreen);
  }
}
