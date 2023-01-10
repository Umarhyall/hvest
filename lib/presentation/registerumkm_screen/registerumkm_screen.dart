import 'package:hvest/presentation/identitas_pemilik/views/identitas_pemilik_view.dart';
import 'package:hvest/widgets/custom_size.dart';

import 'controller/registerumkm_controller.dart';
import 'package:flutter/material.dart';
import 'package:hvest/core/app_export.dart';
import 'package:hvest/widgets/custom_button.dart';

class RegisterumkmScreen extends GetWidget<RegisterumkmController> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _inputController = TextEditingController();
    SizeConfig().init(context);
    final width = SizeConfig.screenWidth;
    final height = SizeConfig.screenHeight;
    return Scaffold(
        backgroundColor: ColorConstant.gray100,
        body: Container(
            width: size.width,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      width: size.width,
                      padding:
                          getPadding(left: 15, top: 57, right: 15, bottom: 39),
                      decoration: AppDecoration.fillBlueA400.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderBL10),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowleft32x32,
                                height: getSize(32.00),
                                width: getSize(32.00),
                                margin: getMargin(top: 15, bottom: 5),
                                onTap: () {
                                  onTapImgArrowleft();
                                }),
                            Padding(
                                padding:
                                    getPadding(left: 59, top: 10, right: 90),
                                child: Text("msg_isi_data_pemilik".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsSemiBold28))
                          ])),
                  Padding(
                      padding: getPadding(left: 20, top: 32),
                      child: Text("lbl_nama_pemilik".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsSemiBold20)),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        width * 20 / 428, 0, width * 20 / 428, 0),
                    child: TextfieldWithIcon(
                      width: width,
                      image: 'assets/icon/person.png',
                      text: 'Tulis nama anda',
                    ),
                  ),
                  Container(
                      width: getHorizontalSize(260.00),
                      margin: getMargin(left: 20, top: 9),
                      child: Text("msg_nama_harus_ditulis".tr,
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsRegular16)),
                  Padding(
                      padding: getPadding(left: 20, top: 20),
                      child: Text("lbl_email_pemilik".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsSemiBold20)),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        width * 20 / 428, 0, width * 20 / 428, 0),
                    child: TextfieldWithIcon(
                      width: width,
                      image: 'assets/image/email.png',
                      text: 'Tulis email anda',
                    ),
                  ),
                  // Align(
                  //     alignment: Alignment.center,
                  //     child: Container(
                  //         margin: getMargin(left: 20, top: 8, right: 20),
                  //         padding: getPadding(
                  //             left: 16, top: 17, right: 16, bottom: 17),
                  //         decoration: AppDecoration.outlineGray300.copyWith(
                  //             borderRadius: BorderRadiusStyle.roundedBorder15),
                  //         child: Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Padding(
                  //                   padding: getPadding(bottom: 2),
                  //                   child: Text("msg_tulis_email_anda".tr,
                  //                       overflow: TextOverflow.ellipsis,
                  //                       textAlign: TextAlign.left,
                  //                       style: AppStyle
                  //                           .txtPoppinsRegular20Gray400)),
                  //               CustomImageView(
                  //                   svgPath: ImageConstant.imgMail,
                  //                   height: getVerticalSize(31.00),
                  //                   width: getHorizontalSize(36.00))
                  //             ]))),
                  Padding(
                      padding: getPadding(left: 20, top: 23),
                      child: Text("msg_nomor_hp_pemilik".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsSemiBold20)),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: getMargin(left: 20, top: 8, right: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              width: getHorizontalSize(106.00),
                              padding: getPadding(top: 7, bottom: 7),
                              decoration: AppDecoration.outlineGray3001
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder8),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgMenu,
                                        height: getVerticalSize(30.00),
                                        width: getHorizontalSize(40.00),
                                        margin: getMargin(top: 5, bottom: 5)),
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text("lbl_62".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsBold2652))
                                  ])),
                          Container(
                            width: getHorizontalSize(
                              276.00,
                            ),
                            margin: getMargin(
                              left: 6,
                            ),
                            padding: getPadding(
                              left: 10,
                              top: 9,
                              right: 10,
                              bottom: 9,
                            ),
                            decoration:
                                AppDecoration.txtOutlineGray300.copyWith(
                              borderRadius: BorderRadiusStyle.txtRoundedBorder8,
                            ),
                            child: TextField(
                              controller: _inputController,
                              onSubmitted: null,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Ketik nomor HP anda",
                                labelText: 'HP',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomButton(
                      onTap: () {
                        onTapkirimdata();
                      },
                      height: 64,
                      width: 388,
                      text: "lbl_kirim_data".tr,
                      margin: getMargin(top: 51, bottom: 5),
                      alignment: Alignment.center)
                ])));
  }

  onTapkirimdata() {
    Get.toNamed(AppRoutes.otpregisterScreen);
  }

  onTapImgArrowleft() {
    Get.toNamed(AppRoutes.loginumkmoneScreen);
  }
}
