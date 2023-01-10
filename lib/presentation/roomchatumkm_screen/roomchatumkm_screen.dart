import 'controller/roomchatumkm_controller.dart';
import 'package:flutter/material.dart';
import 'package:hvest/core/app_export.dart';
import 'package:hvest/widgets/app_bar/appbar_circleimage.dart';
import 'package:hvest/widgets/app_bar/appbar_image.dart';
import 'package:hvest/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:hvest/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:hvest/widgets/app_bar/custom_app_bar.dart';
import 'package:hvest/widgets/custom_icon_button.dart';
import 'package:hvest/widgets/custom_text_form_field.dart';

class RoomchatumkmScreen extends GetWidget<RoomchatumkmController> {
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
                margin: getMargin(
                  left: 20,
                ),
                onTap: onTapArrowleft7),
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
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomImageView(
                  svgPath: ImageConstant.imgGroupBlueA40001,
                  height: getVerticalSize(266.00),
                  width: getHorizontalSize(302.00)),
              Padding(
                  padding: getPadding(top: 1, bottom: 5),
                  child: Text("msg_belum_ada_pesan".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsSemiBold20Black900))
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

  onTapArrowleft7() {
    Get.back();
  }
}
