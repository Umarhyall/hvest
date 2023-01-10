import 'controller/informasibank_controller.dart';
import 'package:flutter/material.dart';
import 'package:hvest/core/app_export.dart';
import 'package:hvest/widgets/app_bar/appbar_image.dart';
import 'package:hvest/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:hvest/widgets/app_bar/custom_app_bar.dart';
import 'package:hvest/widgets/custom_button.dart';
import 'package:hvest/widgets/custom_drop_down.dart';
import 'package:hvest/widgets/custom_text_form_field.dart';

class InformasibankScreen extends GetWidget<InformasibankController> {
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
                    onTap: onTapArrowleft1),
                centerTitle: true,
                title: AppbarSubtitle1(
                    text: "msg_informasi_rekening".tr,
                    margin: getMargin(top: 56, bottom: 26)),
                styleType: Style.bgFillBlueA400),
            body: Container(
                width: size.width,
                padding: getPadding(left: 19, top: 32, right: 19, bottom: 32),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          margin: getMargin(left: 1),
                          padding: getPadding(top: 17, bottom: 17),
                          decoration: AppDecoration.fillBlue700.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgInfo,
                                    height: getSize(39.00),
                                    width: getSize(39.00),
                                    margin: getMargin(top: 2, bottom: 3)),
                                Container(
                                    width: getHorizontalSize(324.00),
                                    margin: getMargin(top: 3),
                                    child: Text("msg_rekening_bank_akan".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular1312))
                              ])),
                      Padding(
                          padding: getPadding(left: 1, top: 25),
                          child: Text("lbl_nomor_rekening".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold20)),
                      CustomTextFormField(
                          width: 388,
                          focusNode: FocusNode(),
                          controller: controller.nomorRekeningOneController,
                          hintText: "msg_tulis_nomor_rekening".tr,
                          margin: getMargin(left: 1, top: 6),
                          textInputAction: TextInputAction.done),
                      Padding(
                          padding: getPadding(left: 5, top: 23),
                          child: Text("lbl_nama_bank".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold20Black900)),
                      Container(
                          width: getHorizontalSize(388.00),
                          margin: getMargin(left: 2, top: 8, bottom: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomDropDown(
                                    width: 388,
                                    focusNode: FocusNode(),
                                    icon: Container(
                                        margin: getMargin(left: 30, right: 30),
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgArrowdown)),
                                    hintText: "lbl_pilih_nama_bank".tr,
                                    items: controller.informasibankModelObj
                                        .value.dropdownItemList,
                                    onChanged: (value) {
                                      controller.onSelected(value);
                                    }),
                                Container(
                                    width: getHorizontalSize(280.00),
                                    margin: getMargin(top: 8),
                                    decoration: AppDecoration.outlineBlack90019
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder1),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                              height: getVerticalSize(1.00),
                                              width: getHorizontalSize(280.00),
                                              decoration: BoxDecoration(
                                                  color:
                                                      ColorConstant.whiteA700)),
                                          Container(
                                              height: getVerticalSize(1.00),
                                              width: getHorizontalSize(280.00),
                                              margin: getMargin(top: 1),
                                              decoration: BoxDecoration(
                                                  color:
                                                      ColorConstant.whiteA700))
                                        ]))
                              ]))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 19, right: 21, bottom: 17),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomButton(height: 64, width: 388, text: "lbl_simpan".tr)
                ]))));
  }

  onTapArrowleft1() {
    Get.toNamed(AppRoutes.registerumkmtwoScreen);
  }
}
