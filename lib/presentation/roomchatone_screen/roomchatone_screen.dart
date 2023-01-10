import 'controller/roomchatone_controller.dart';
import 'package:flutter/material.dart';
import 'package:hvest/core/app_export.dart';
import 'package:hvest/widgets/app_bar/appbar_circleimage.dart';
import 'package:hvest/widgets/app_bar/appbar_image.dart';
import 'package:hvest/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:hvest/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:hvest/widgets/app_bar/custom_app_bar.dart';
import 'package:hvest/widgets/custom_icon_button.dart';
import 'package:hvest/widgets/custom_text_form_field.dart';

class RoomchatoneScreen extends GetWidget<RoomchatoneController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.gray10001,
        appBar: CustomAppBar(
            height: getVerticalSize(114.00),
            leadingWidth: 40,
            leading: AppbarImage(
                height: getSize(20.00),
                width: getSize(20.00),
                svgPath: ImageConstant.imgArrowleft32x32,
                margin: getMargin(left: 20, top: 47, bottom: 47),
                onTap: onTapArrowleft8),
            title: Padding(
                padding: getPadding(left: 30),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(children: [
                        Container(
                            height: getSize(61.00),
                            width: getSize(61.00),
                            child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  AppbarCircleimage(
                                      imagePath: ImageConstant.imgEllipse2710),
                                  Align(
                                      alignment: Alignment.bottomRight,
                                      child: Container(
                                          margin: getMargin(
                                              left: 43, top: 45, right: 2),
                                          padding: getPadding(all: 2),
                                          decoration: AppDecoration.fillBlueA400
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder8),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                    height: getSize(10.00),
                                                    width: getSize(10.00),
                                                    margin: getMargin(all: 2),
                                                    decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .greenA700,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                getHorizontalSize(
                                                                    5.00))))
                                              ])))
                                ])),
                        Padding(
                            padding: getPadding(left: 6, top: 4, bottom: 9),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  AppbarSubtitle2(text: "lbl_jacob_jones".tr),
                                  AppbarSubtitle3(
                                      text: "lbl_online".tr,
                                      margin: getMargin(right: 84))
                                ]))
                      ])
                    ])),
            styleType: Style.bgFillBlueA400_1),
        body: Container(
            width: size.width,
            padding: getPadding(left: 20, top: 50, right: 20, bottom: 50),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                          width: getHorizontalSize(302.00),
                          padding: getPadding(
                              left: 10, top: 7, right: 10, bottom: 7),
                          decoration: AppDecoration.gradientBlueA200IndigoA400
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL25),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: getHorizontalSize(268.00),
                                    margin: getMargin(top: 3),
                                    child: Text("msg_hei_jacob_saya2".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular13))
                              ]))),
                  Padding(
                      padding: getPadding(left: 86, top: 9, bottom: 5),
                      child: Row(children: [
                        Text("lbl_06_32_pm".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsRegular12),
                        CustomImageView(
                            svgPath: ImageConstant.imgCheckmark13x22,
                            height: getVerticalSize(13.00),
                            width: getHorizontalSize(22.00),
                            margin: getMargin(left: 7, top: 1, bottom: 3))
                      ]))
                ])),
        bottomNavigationBar: Container(
            width: size.width,
            padding: getPadding(top: 16, bottom: 16),
            decoration: AppDecoration.fillBlueA400
                .copyWith(borderRadius: BorderRadiusStyle.customBorderTL10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomTextFormField(
                      width: 308,
                      focusNode: FocusNode(),
                      controller: controller.searchbarController,
                      hintText: "msg_ketik_sesuatu_disini".tr,
                      margin: getMargin(top: 6, bottom: 6),
                      variant: TextFormFieldVariant.FillWhiteA700,
                      shape: TextFormFieldShape.RoundedBorder21,
                      padding: TextFormFieldPadding.PaddingAll11,
                      fontStyle: TextFormFieldFontStyle.PoppinsRegular1535,
                      textInputAction: TextInputAction.done),
                  CustomIconButton(
                      height: 59,
                      width: 61,
                      child: CustomImageView(svgPath: ImageConstant.imgSend))
                ])));
  }

  onTapArrowleft8() {
    Get.toNamed(AppRoutes.homeumkmContainerScreen);
  }
}
