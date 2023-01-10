import 'controller/searchumkm_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:hvest/core/app_export.dart';
import 'package:hvest/widgets/app_bar/appbar_image.dart';
import 'package:hvest/widgets/app_bar/appbar_searchview.dart';
import 'package:hvest/widgets/app_bar/custom_app_bar.dart';

class SearchumkmOneScreen extends GetWidget<SearchumkmOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray10001,
            appBar: CustomAppBar(
                height: getVerticalSize(122.00),
                leadingWidth: 46,
                leading: AppbarImage(
                    height: getSize(32.00),
                    width: getSize(32.00),
                    svgPath: ImageConstant.imgArrowleft32x32,
                    margin: getMargin(left: 14, top: 64, bottom: 26),
                    onTap: onTapArrowleft4),
                title: AppbarSearchview(
                    hintText: "lbl_cari_investor2".tr,
                    controller: controller.searchbarController,
                    margin: getMargin(top: 56, bottom: 19)),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(122.00),
                      width: getHorizontalSize(109.00),
                      imagePath: ImageConstant.imgEllipse26122x109)
                ],
                styleType: Style.bgFillIndigoA200),
            body: Container(
                width: size.width,
                padding: getPadding(left: 54, right: 54),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgGroup,
                          height: getSize(251.00),
                          width: getSize(251.00)),
                      Padding(
                          padding: getPadding(top: 29, bottom: 5),
                          child: Text("msg_ups_belum_ada_riwayat".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular18Black900))
                    ]))));
  }

  onTapArrowleft4() {
    Get.toNamed(AppRoutes.homeumkmContainerScreen);
  }
}
