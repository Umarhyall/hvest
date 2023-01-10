import '../controller/role_controller.dart';
import '../models/role_screen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hvest/core/app_export.dart';

// ignore: must_be_immutable
class RoleScreenItemWidget extends StatelessWidget {
  RoleScreenItemWidget(this.roleScreenItemModelObj, {this.onTapCardInvestor});

  RoleScreenItemModel roleScreenItemModelObj;

  var controller = Get.find<RoleController>();

  VoidCallback? onTapCardInvestor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: GestureDetector(
            onTap: () {
              Get.toNamed(AppRoutes.loginInvestorScreen);
            },
            child: Container(
              margin: getMargin(
                bottom: 26.0,
              ),
              padding: getPadding(
                left: 14,
                top: 12,
                right: 14,
                bottom: 12,
              ),
              decoration: AppDecoration.outlineBlueA4007f.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "lbl_investor".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsSemiBold20,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgInvestor1,
                    height: getSize(
                      160.00,
                    ),
                    width: getSize(
                      160.00,
                    ),
                    margin: getMargin(
                      top: 7,
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      235.00,
                    ),
                    margin: getMargin(
                      bottom: 1,
                    ),
                    child: Text(
                      "msg_bangkitkan_umkm".tr,
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtPoppinsRegular12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: GestureDetector(
            onTap: () {
              Get.toNamed(AppRoutes.loginumkmoneScreen);
            },
            child: Container(
              margin: getMargin(
                top: 26.0,
                bottom: 26.0,
              ),
              padding: getPadding(
                left: 14,
                top: 12,
                right: 14,
                bottom: 12,
              ),
              decoration: AppDecoration.outlineBlueA4007f.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "lbl_pelaku_umkm".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsSemiBold20,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgInvestor2,
                    height: getSize(
                      160.00,
                    ),
                    width: getSize(
                      160.00,
                    ),
                    margin: getMargin(
                      top: 7,
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      235.00,
                    ),
                    margin: getMargin(
                      top: 10,
                      bottom: 1,
                    ),
                    child: Text(
                      "msg_kembangkan_usaha".tr,
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtPoppinsRegular12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
