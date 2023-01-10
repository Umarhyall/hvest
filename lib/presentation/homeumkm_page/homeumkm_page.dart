import '../homeumkm_page/widgets/homeumkm_item_widget.dart';
import 'controller/homeumkm_controller.dart';
import 'models/homeumkm_item_model.dart';
import 'models/homeumkm_model.dart';
import 'package:flutter/material.dart';
import 'package:hvest/core/app_export.dart';
import 'package:hvest/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class HomeumkmPage extends StatelessWidget {
  HomeumkmController controller =
      Get.put(HomeumkmController(HomeumkmModel().obs));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConstant.gray10001,
      body: Container(
        width: size.width,
        decoration: AppDecoration.fillGray10001,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: getVerticalSize(
                          332.00,
                        ),
                        width: size.width,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                width: size.width,
                                decoration: AppDecoration.fillIndigoA200,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding: getPadding(
                                          left: 19,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                top: 56,
                                                bottom: 46,
                                              ),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "lbl_lokasi".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsSemiBold1942,
                                                  ),
                                                  Container(
                                                    width: getHorizontalSize(
                                                      193.00,
                                                    ),
                                                    margin: getMargin(
                                                      top: 2,
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          "msg_semarang_indonesia"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsMedium16,
                                                        ),
                                                        CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgLocation,
                                                          height:
                                                              getVerticalSize(
                                                            20.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            16.00,
                                                          ),
                                                          margin: getMargin(
                                                            bottom: 3,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              height: getVerticalSize(
                                                160.00,
                                              ),
                                              width: getHorizontalSize(
                                                109.00,
                                              ),
                                              child: Stack(
                                                alignment:
                                                    Alignment.centerRight,
                                                children: [
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgEllipse26,
                                                    height: getVerticalSize(
                                                      160.00,
                                                    ),
                                                    width: getHorizontalSize(
                                                      109.00,
                                                    ),
                                                    alignment: Alignment.center,
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Container(
                                                      height: getVerticalSize(
                                                        53.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        51.00,
                                                      ),
                                                      margin: getMargin(
                                                        right: 19,
                                                      ),
                                                      child: Stack(
                                                        alignment:
                                                            Alignment.topRight,
                                                        children: [
                                                          CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgRectangle,
                                                            height: getSize(
                                                              49.00,
                                                            ),
                                                            width: getSize(
                                                              49.00,
                                                            ),
                                                            radius: BorderRadius
                                                                .circular(
                                                              getHorizontalSize(
                                                                24.00,
                                                              ),
                                                            ),
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                          ),
                                                          Align(
                                                            alignment: Alignment
                                                                .topRight,
                                                            child: Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                17.00,
                                                              ),
                                                              padding:
                                                                  getPadding(
                                                                all: 2,
                                                              ),
                                                              decoration:
                                                                  AppDecoration
                                                                      .fillBlue300f4
                                                                      .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder8,
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Container(
                                                                    height:
                                                                        getSize(
                                                                      12.00,
                                                                    ),
                                                                    width:
                                                                        getSize(
                                                                      12.00,
                                                                    ),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: ColorConstant
                                                                          .lightGreenA400,
                                                                      borderRadius:
                                                                          BorderRadius
                                                                              .circular(
                                                                        getHorizontalSize(
                                                                          6.00,
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
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 10,
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse27,
                                            height: getVerticalSize(
                                              106.00,
                                            ),
                                            width: getHorizontalSize(
                                              87.00,
                                            ),
                                            margin: getMargin(
                                              top: 32,
                                            ),
                                          ),
                                          Container(
                                            width: getHorizontalSize(
                                              313.00,
                                            ),
                                            margin: getMargin(
                                              left: 7,
                                              bottom: 50,
                                            ),
                                            child: RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text:
                                                        "msg_bangkitkan_usaha2"
                                                            .tr,
                                                    style: TextStyle(
                                                      color: ColorConstant
                                                          .whiteA700,
                                                      fontSize: getFontSize(
                                                        20,
                                                      ),
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: "msg_umkm_anda_dengan"
                                                        .tr,
                                                    style: TextStyle(
                                                      color: ColorConstant
                                                          .whiteA700,
                                                      fontSize: getFontSize(
                                                        20,
                                                      ),
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: "lbl_hvest".tr,
                                                    style: TextStyle(
                                                      color: ColorConstant
                                                          .whiteA700,
                                                      fontSize: getFontSize(
                                                        20,
                                                      ),
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              textAlign: TextAlign.right,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            CustomSearchView(
                              width: 388,
                              focusNode: FocusNode(),
                              controller: controller.searchbarController,
                              hintText: "lbl_cari_investor".tr,
                              shape: SearchViewShape.RoundedBorder21,
                              alignment: Alignment.bottomCenter,
                              prefix: InkWell(
                                onTap: () {
                                  Get.toNamed(AppRoutes.searchumkmScreen);
                                },
                                child: Container(
                                  margin: getMargin(
                                    left: 16,
                                    top: 13,
                                    right: 7,
                                    bottom: 13,
                                  ),
                                  child: CustomImageView(
                                    svgPath: ImageConstant.imgSearch,
                                  ),
                                ),
                              ),
                              prefixConstraints: BoxConstraints(
                                minWidth: getSize(
                                  19.00,
                                ),
                                minHeight: getSize(
                                  19.00,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 25,
                        ),
                        child: Text(
                          "msg_kategori_investasi".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsSemiBold19,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 6,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: getHorizontalSize(
                                85.00,
                              ),
                              padding: getPadding(
                                left: 16,
                                top: 6,
                                right: 16,
                                bottom: 6,
                              ),
                              decoration: AppDecoration.txtOutlineDeeporange800
                                  .copyWith(
                                borderRadius:
                                    BorderRadiusStyle.txtRoundedBorder18,
                              ),
                              child: Text(
                                "lbl_bronze".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsSemiBold1512,
                              ),
                            ),
                            Container(
                              width: getHorizontalSize(
                                75.00,
                              ),
                              margin: getMargin(
                                left: 18,
                              ),
                              padding: getPadding(
                                left: 16,
                                top: 6,
                                right: 16,
                                bottom: 6,
                              ),
                              decoration: AppDecoration.txtOutlineBluegray40001
                                  .copyWith(
                                borderRadius:
                                    BorderRadiusStyle.txtRoundedBorder18,
                              ),
                              child: Text(
                                "lbl_silver".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle
                                    .txtPoppinsSemiBold1512Bluegray40001,
                              ),
                            ),
                            Container(
                              width: getHorizontalSize(
                                68.00,
                              ),
                              margin: getMargin(
                                left: 18,
                              ),
                              padding: getPadding(
                                left: 16,
                                top: 7,
                                right: 16,
                                bottom: 7,
                              ),
                              decoration:
                                  AppDecoration.txtOutlineYellow700.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.txtRoundedBorder18,
                              ),
                              child: Text(
                                "lbl_gold".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsSemiBold1512Yellow700,
                              ),
                            ),
                            Container(
                              width: getHorizontalSize(
                                102.00,
                              ),
                              margin: getMargin(
                                left: 18,
                              ),
                              padding: getPadding(
                                left: 16,
                                top: 6,
                                right: 16,
                                bottom: 6,
                              ),
                              decoration:
                                  AppDecoration.txtOutlineBluegray200.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.txtRoundedBorder18,
                              ),
                              child: Text(
                                "lbl_platinum".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style:
                                    AppStyle.txtPoppinsSemiBold1512Bluegray200,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: getPadding(
                            left: 20,
                            top: 31,
                          ),
                          child: Text(
                            "msg_rekomendasi_investor".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsSemiBold19,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 20,
                          top: 14,
                          right: 20,
                        ),
                        child: Obx(
                          () => ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: controller
                                .homeumkmModelObj.value.homeumkmItemList.length,
                            itemBuilder: (context, index) {
                              HomeumkmItemModel model = controller
                                  .homeumkmModelObj
                                  .value
                                  .homeumkmItemList[index];
                              return HomeumkmItemWidget(
                                model,
                              );
                            },
                          ),
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          left: 20,
                          top: 8,
                          right: 20,
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
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgEllipse274,
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
                            ),
                            Padding(
                              padding: getPadding(
                                left: 12,
                                top: 39,
                                right: 203,
                                bottom: 8,
                              ),
                              child: Text(
                                "lbl_10jt_50jt".tr,
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
