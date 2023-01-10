import '../daftar_investor_screen/widgets/listemail1_item_widget.dart';
import 'controller/daftar_investor_controller.dart';
import 'models/listemail1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hvest/core/app_export.dart';
import 'package:hvest/widgets/custom_button.dart';

class DaftarInvestorScreen extends GetWidget<DaftarInvestorController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
            width: size.width,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                  height: getVerticalSize(206.00),
                  width: getHorizontalSize(411.00),
                  child: Stack(alignment: Alignment.centerRight, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgEllipse35192x136,
                        height: getVerticalSize(192.00),
                        width: getHorizontalSize(136.00),
                        alignment: Alignment.topRight),
                    CustomImageView(
                        imagePath: ImageConstant.imgEllipse36206x107,
                        height: getVerticalSize(206.00),
                        width: getHorizontalSize(107.00),
                        alignment: Alignment.centerRight),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                            padding: getPadding(left: 2, bottom: 1),
                            child: Text("lbl_buat_akun_anda".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsSemiBold40))),
                    CustomImageView(
                        svgPath: ImageConstant.imgArrowleft,
                        height: getSize(32.00),
                        width: getSize(32.00),
                        alignment: Alignment.topLeft,
                        margin: getMargin(top: 56),
                        onTap: () {
                          onTapImgArrowleft();
                        })
                  ])),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: getPadding(left: 22, top: 17),
                      child: Text("lbl_nama".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsSemiBold20))),
              Container(
                  margin: getMargin(left: 20, top: 7, right: 20),
                  padding: getPadding(left: 16, top: 17, right: 16, bottom: 17),
                  decoration: AppDecoration.outlineGray300.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: getPadding(bottom: 2),
                            child: Text("lbl_tulis_nama_anda".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular20Gray400)),
                        CustomImageView(
                            svgPath: ImageConstant.imgUser,
                            height: getVerticalSize(31.00),
                            width: getHorizontalSize(34.00))
                      ])),
              Padding(
                  padding: getPadding(left: 20, top: 17, right: 20),
                  child: Obx(() => ListView.builder(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: controller.daftarInvestorModelObj.value
                          .listemail1ItemList.length,
                      itemBuilder: (context, index) {
                        Listemail1ItemModel model = controller
                            .daftarInvestorModelObj
                            .value
                            .listemail1ItemList[index];
                        return Listemail1ItemWidget(model);
                      }))),
              CustomButton(
                  height: 66,
                  width: 388,
                  text: "lbl_daftar2".tr,
                  margin: getMargin(top: 32, bottom: 5))
            ])));
  }

  onTapImgArrowleft() {
    Get.toNamed(AppRoutes.loginInvestorOneScreen);
  }
}
