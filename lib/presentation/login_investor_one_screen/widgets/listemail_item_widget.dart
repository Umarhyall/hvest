import '../controller/login_investor_one_controller.dart';
import '../models/listemail_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hvest/core/app_export.dart';

// ignore: must_be_immutable
class ListemailItemWidget extends StatelessWidget {
  ListemailItemWidget(this.listemailItemModelObj);

  ListemailItemModel listemailItemModelObj;

  var controller = Get.find<LoginInvestorOneController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        top: 7.845001,
        bottom: 7.845001,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "lbl_email".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtPoppinsSemiBold20,
          ),
          Container(
            margin: getMargin(
              top: 8,
            ),
            padding: getPadding(
              left: 16,
              top: 17,
              right: 16,
              bottom: 17,
            ),
            decoration: AppDecoration.outlineGray300.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: getPadding(
                    bottom: 2,
                  ),
                  child: Text(
                    "msg_tulis_email_anda".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular20Gray400,
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgMail,
                  height: getVerticalSize(
                    31.00,
                  ),
                  width: getHorizontalSize(
                    36.00,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
