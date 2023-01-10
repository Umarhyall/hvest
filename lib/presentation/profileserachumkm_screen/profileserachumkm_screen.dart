import 'controller/profileserachumkm_controller.dart';
import 'package:flutter/material.dart';
import 'package:hvest/core/app_export.dart';
import 'package:hvest/widgets/app_bar/appbar_image.dart';
import 'package:hvest/widgets/app_bar/custom_app_bar.dart';
import 'package:hvest/widgets/custom_button.dart';

class ProfileserachumkmScreen extends GetWidget<ProfileserachumkmController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.gray10001,
        body: Container(
            width: size.width,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                  height: getVerticalSize(319.00),
                  width: size.width,
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                            height: getVerticalSize(241.00),
                            width: size.width,
                            child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgEllipse30,
                                      height: getVerticalSize(241.00),
                                      width: getHorizontalSize(428.00),
                                      alignment: Alignment.center),
                                  CustomAppBar(
                                      height: getVerticalSize(56.00),
                                      leadingWidth: 44,
                                      leading: AppbarImage(
                                          height: getSize(32.00),
                                          width: getSize(32.00),
                                          svgPath: ImageConstant.imgArrowleft,
                                          margin: getMargin(
                                            left: 12,
                                          ),
                                          onTap: onTapArrowleft6),
                                      centerTitle: true,
                                      title: Text("lbl_profil".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPoppinsSemiBold32WhiteA700))
                                ]))),
                    CustomImageView(
                        imagePath: ImageConstant.imgEllipse2710,
                        height: getSize(156.00),
                        width: getSize(156.00),
                        radius: BorderRadius.circular(getHorizontalSize(20.00)),
                        alignment: Alignment.bottomCenter)
                  ])),
              Padding(
                  padding: getPadding(top: 11),
                  child: Text("lbl_jacob_jones".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsSemiBold24Gray900)),
              Text("lbl_3jt_5jt".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsMedium20),
              CustomButton(
                  height: 36,
                  width: 74,
                  text: "lbl_silver".tr,
                  margin: getMargin(top: 8),
                  variant: ButtonVariant.OutlineBluegray40001,
                  shape: ButtonShape.CircleBorder18,
                  padding: ButtonPadding.PaddingAll5,
                  fontStyle: ButtonFontStyle.PoppinsSemiBold1475),
              Container(
                  width: getHorizontalSize(387.00),
                  margin: getMargin(top: 13),
                  child: Text("msg_halo_saya_jacob".tr,
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtPoppinsRegular16Black900)),
              Padding(
                  padding: getPadding(top: 40, bottom: 5),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                            height: 49,
                            width: 136,
                            text: "lbl_simpan".tr,
                            variant: ButtonVariant.OutlineBlueA400,
                            shape: ButtonShape.RoundedBorder15,
                            padding: ButtonPadding.PaddingT10,
                            fontStyle: ButtonFontStyle.PoppinsSemiBold1673,
                            prefixWidget: Container(
                                margin: getMargin(right: 8),
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgUpload25x27))),
                        CustomButton(
                            height: 48,
                            width: 242,
                            text: "msg_kerjasama_sekarang".tr,
                            margin: getMargin(left: 10, top: 1),
                            variant: ButtonVariant.FillIndigoA200,
                            shape: ButtonShape.RoundedBorder15,
                            padding: ButtonPadding.PaddingAll10,
                            fontStyle: ButtonFontStyle.PoppinsSemiBold16,
                            onTap: onTapKerjasamasekarang)
                      ]))
            ])));
  }

  onTapArrowleft6() {
    Get.back();
  }

  onTapKerjasamasekarang() {
    Get.toNamed(AppRoutes.roomchatumkmScreen);
  }
}
