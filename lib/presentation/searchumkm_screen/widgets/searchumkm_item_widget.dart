import '../controller/searchumkm_controller.dart';
import '../models/searchumkm_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hvest/core/app_export.dart';

// ignore: must_be_immutable
class SearchumkmItemWidget extends StatelessWidget {
  SearchumkmItemWidget(this.searchumkmItemModelObj,
      {this.onTapColumnellipsetwentyseven});

  SearchumkmItemModel searchumkmItemModelObj;

  var controller = Get.find<SearchumkmController>();

  VoidCallback? onTapColumnellipsetwentyseven;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapColumnellipsetwentyseven!();
      },
      child: Container(
        padding: getPadding(
          left: 11,
          top: 13,
          right: 11,
          bottom: 13,
        ),
        decoration: AppDecoration.outlineGray3002.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder19,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: getSize(
                      71.00,
                    ),
                    width: getSize(
                      71.00,
                    ),
                    margin: getMargin(
                      top: 11,
                    ),
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse275,
                          height: getSize(
                            71.00,
                          ),
                          width: getSize(
                            71.00,
                          ),
                          radius: BorderRadius.circular(
                            getHorizontalSize(
                              35.00,
                            ),
                          ),
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            width: getHorizontalSize(
                              18.00,
                            ),
                            margin: getMargin(
                              right: 3,
                            ),
                            padding: getPadding(
                              all: 2,
                            ),
                            decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: getSize(
                                    14.00,
                                  ),
                                  width: getSize(
                                    14.00,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.blueGray40001,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        7.00,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgStar,
                    height: getVerticalSize(
                      23.00,
                    ),
                    width: getHorizontalSize(
                      24.00,
                    ),
                    margin: getMargin(
                      left: 18,
                      bottom: 59,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                top: 8,
              ),
              child: Text(
                "lbl_wade_warren".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsSemiBold19Gray900,
              ),
            ),
            Text(
              "msg_bersedia_untuk_investasi".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsRegular10,
            ),
            Text(
              "lbl_1jt_1_5jt".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsMedium16GreenA400,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgLocation12x10,
                  height: getVerticalSize(
                    12.00,
                  ),
                  width: getHorizontalSize(
                    10.00,
                  ),
                  margin: getMargin(
                    bottom: 2,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 2,
                  ),
                  child: Text(
                    "msg_semarang_indonesia".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular10,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
