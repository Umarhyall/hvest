import 'controller/otplogin_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hvest/core/app_export.dart';
import 'package:hvest/widgets/custom_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtploginScreen extends GetWidget<OtploginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
            width: size.width,
            padding: getPadding(left: 13, top: 57, right: 13, bottom: 8),
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
                  Container(
                      height: getVerticalSize(428.00),
                      width: getHorizontalSize(387.00),
                      margin: getMargin(left: 7, top: 55),
                      child: Stack(alignment: Alignment.topCenter, children: [
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      width: getHorizontalSize(264.00),
                                      child: Text(
                                          "msg_kode_otp_sudah_terkirim".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.center,
                                          style:
                                              AppStyle.txtPoppinsSemiBold3195)),
                                  Container(
                                      width: getHorizontalSize(387.00),
                                      margin: getMargin(top: 9),
                                      child: Text("msg_masukkan_kode_otp".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.center,
                                          style: AppStyle.txtPoppinsRegular17))
                                ])),
                        CustomImageView(
                            imagePath: ImageConstant.imgSentmessagesisometric,
                            height: getVerticalSize(295.00),
                            width: getHorizontalSize(302.00),
                            alignment: Alignment.topCenter)
                      ])),
                  Padding(
                    padding: getPadding(top: 29, left: 40),
                    child: Container(
                      width: getHorizontalSize(316.00),
                      height: getVerticalSize(65.00),
                      child: Obx(
                        () => PinCodeTextField(
                          appContext: context,
                          controller: controller.otpController.value,
                          length: 4,
                          obscureText: false,
                          obscuringCharacter: '*',
                          keyboardType: TextInputType.number,
                          autoDismissKeyboard: true,
                          enableActiveFill: true,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          onChanged: (value) {},
                          pinTheme: PinTheme(
                              fieldHeight: getHorizontalSize(65.88),
                              fieldWidth: getHorizontalSize(65.88),
                              shape: PinCodeFieldShape.box,
                              borderRadius: BorderRadius.circular(
                                  getHorizontalSize(7.00)),
                              selectedFillColor: ColorConstant.orangeA200B2,
                              activeFillColor: ColorConstant.orangeA200B2,
                              inactiveFillColor: ColorConstant.orangeA200B2,
                              inactiveColor: ColorConstant.orangeA200,
                              selectedColor: ColorConstant.orangeA200,
                              activeColor: ColorConstant.orangeA200),
                        ),
                      ),
                    ),
                  ),
                  CustomButton(
                      onTap: () {
                        Get.toNamed(AppRoutes.homeumkmContainerScreen);
                      },
                      height: 64,
                      width: 388,
                      text: "lbl_kirim".tr,
                      margin: getMargin(left: 7, top: 64, bottom: 5))
                ])));
  }

  onTapImgArrowleft() {
    Get.toNamed(AppRoutes.loginumkmtwoScreen);
  }
}
