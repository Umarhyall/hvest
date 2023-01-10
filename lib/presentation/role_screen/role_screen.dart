import '../role_screen/widgets/role_screen_item_widget.dart';
import 'controller/role_controller.dart';
import 'models/role_screen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hvest/core/app_export.dart';

class RoleScreen extends GetWidget<RoleController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.gray100,
      body: Container(
        width: size.width,
        padding: getPadding(left: 15, top: 55, right: 15),
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
              width: getHorizontalSize(336.00),
              margin: getMargin(left: 5, top: 20),
              child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "lbl_silahkan_pilih".tr,
                          style: TextStyle(
                              color: ColorConstant.black900,
                              fontSize: getFontSize(28.13559341430664),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600)),
                      TextSpan(
                          text: "lbl_role".tr,
                          style: TextStyle(
                              color: ColorConstant.blueA400,
                              fontSize: getFontSize(28.13559341430664),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600)),
                      TextSpan(
                          text: "msg_anda_terlebih_dahu".tr,
                          style: TextStyle(
                              color: ColorConstant.black900,
                              fontSize: getFontSize(28.13559341430664),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600)),
                      TextSpan(
                          text: "lbl_lu".tr,
                          style: TextStyle(
                              color: ColorConstant.black900,
                              fontSize: getFontSize(28.13559341430664),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600))
                    ],
                  ),
                  textAlign: TextAlign.left),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(left: 66, right: 67),
                child: Obx(
                  () => ListView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount:
                        controller.roleModelObj.value.roleScreenItemList.length,
                    itemBuilder: (context, index) {
                      RoleScreenItemModel model = controller
                          .roleModelObj.value.roleScreenItemList[index];
                      return RoleScreenItemWidget(model,
                          onTapCardInvestor: onTapCardInvestor);
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  onTapCardInvestor() {
    Get.toNamed(AppRoutes.loginInvestorScreen);
  }

  onTapImgArrowleft() {
    Get.toNamed(AppRoutes.oboardingscreenoneScreen);
  }
}
