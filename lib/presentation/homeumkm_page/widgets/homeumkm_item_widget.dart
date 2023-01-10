import '../controller/homeumkm_controller.dart';
import '../models/homeumkm_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hvest/core/app_export.dart';

// ignore: must_be_immutable
class HomeumkmItemWidget extends StatelessWidget {
  HomeumkmItemWidget(this.homeumkmItemModelObj);

  HomeumkmItemModel homeumkmItemModelObj;

  var controller = Get.find<HomeumkmController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        top: 4.0,
        bottom: 4.0,
      ),
      padding: getPadding(
        left: 13,
        top: 6,
        right: 13,
        bottom: 6,
      ),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: getSize(
              71.00,
            ),
            width: getSize(
              71.00,
            ),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse2771x71,
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
                    decoration: AppDecoration.fillGray10001.copyWith(
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
                            color: ColorConstant.deepOrange800,
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
          Padding(
            padding: getPadding(
              left: 12,
              top: 2,
              right: 148,
              bottom: 7,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "lbl_jane_cooper".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsSemiBold20Black900,
                ),
                Padding(
                  padding: getPadding(
                    top: 6,
                  ),
                  child: Text(
                    "lbl_500k_850k".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsMedium16GreenA400,
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
