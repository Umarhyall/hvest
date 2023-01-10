import '../login_investor_one_screen/widgets/listemail_item_widget.dart';
import 'controller/login_investor_one_controller.dart';
import 'models/listemail_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hvest/core/app_export.dart';
import 'package:hvest/widgets/custom_button.dart';

class LoginInvestorOneScreen extends GetWidget<LoginInvestorOneController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
            width: size.width,
            padding: getPadding(top: 22, bottom: 22),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: getPadding(left: 20, top: 23),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: getPadding(top: 208),
                                child: Text("lbl_masuk".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsSemiBold4622)),
                            Container(
                                height: getVerticalSize(232.00),
                                width: getHorizontalSize(157.00),
                                margin: getMargin(bottom: 46),
                                child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgEllipse35,
                                          height: getVerticalSize(218.00),
                                          width: getHorizontalSize(157.00),
                                          alignment: Alignment.topCenter),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgEllipse36,
                                          height: getVerticalSize(218.00),
                                          width: getHorizontalSize(128.00),
                                          alignment: Alignment.bottomRight)
                                    ]))
                          ]))),
              Padding(
                  padding: getPadding(left: 20, top: 22, right: 20),
                  child: Obx(() => ListView.builder(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: controller.loginInvestorOneModelObj.value
                          .listemailItemList.length,
                      itemBuilder: (context, index) {
                        ListemailItemModel model = controller
                            .loginInvestorOneModelObj
                            .value
                            .listemailItemList[index];
                        return ListemailItemWidget(model);
                      }))),
              CustomButton(
                  height: 64,
                  width: 388,
                  text: "lbl_masuk".tr,
                  margin: getMargin(top: 32)),
              GestureDetector(
                  onTap: () {
                    onTapTxtBelummempuyaiakun();
                  },
                  child: Padding(
                      padding: getPadding(top: 210),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "msg_belum_mempuyai_akun2".tr,
                                style: TextStyle(
                                    color: ColorConstant.black900,
                                    fontSize: getFontSize(15.386472702026367),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500)),
                            TextSpan(
                                text: "lbl_daftar2".tr,
                                style: TextStyle(
                                    color: ColorConstant.yellow700,
                                    fontSize: getFontSize(15.386472702026367),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600)),
                            TextSpan(
                                text: " ",
                                style: TextStyle(
                                    color: ColorConstant.black900,
                                    fontSize: getFontSize(15.386472702026367),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500))
                          ]),
                          textAlign: TextAlign.left)))
            ])));
  }

  onTapTxtBelummempuyaiakun() {
    Get.toNamed(AppRoutes.daftarInvestorScreen);
  }
}
