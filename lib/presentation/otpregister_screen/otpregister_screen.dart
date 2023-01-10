import 'controller/otpregister_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hvest/core/app_export.dart';
import 'package:hvest/widgets/custom_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpregisterScreen extends GetWidget<OtpregisterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      body: Container(
        width: size.width,
        padding: getPadding(left: 13, top: 55, right: 13, bottom: 55),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
                svgPath: ImageConstant.imgArrowleft,
                height: getSize(32.00),
                width: getSize(32.00),
                alignment: Alignment.centerLeft,
                onTap: () {
                  onTapImgArrowleft();
                }),
            CustomImageView(
                imagePath: ImageConstant.imgSentmessagesisometric,
                height: getVerticalSize(295.00),
                width: getHorizontalSize(302.00),
                margin: getMargin(top: 28)),
            Container(
                width: getHorizontalSize(264.00),
                margin: getMargin(top: 5),
                child: Text("msg_kode_otp_sudah_terkirim".tr,
                    maxLines: null,
                    textAlign: TextAlign.center,
                    style: AppStyle.txtPoppinsSemiBold3195)),
            Container(
                width: getHorizontalSize(387.00),
                margin: getMargin(top: 9),
                child: Text("msg_masukkan_kode_otp2".tr,
                    maxLines: null,
                    textAlign: TextAlign.center,
                    style: AppStyle.txtPoppinsRegular17Bluegray400)),
            Padding(
                padding: getPadding(top: 29),
                child: Container(
                    width: getHorizontalSize(316.00),
                    height: getVerticalSize(65.00),
                    child: Obx(() => PinCodeTextField(
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
                            borderRadius:
                                BorderRadius.circular(getHorizontalSize(7.00)),
                            selectedFillColor: ColorConstant.orangeA200B2,
                            activeFillColor: ColorConstant.orangeA200B2,
                            inactiveFillColor: ColorConstant.orangeA200B2,
                            inactiveColor: ColorConstant.orangeA200,
                            selectedColor: ColorConstant.orangeA200,
                            activeColor: ColorConstant.orangeA200))))),
            CustomButton(
              onTap: () {
                onTapButtonKirimOtp();
              },
              height: 64,
              width: 388,
              text: "lbl_kirim".tr,
              margin: getMargin(top: 64, bottom: 5),
            )
          ],
        ),
      ),
    );
  }

  onTapButtonKirimOtp() {
    Get.toNamed(AppRoutes.registerUmkmView);
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
