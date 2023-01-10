import 'controller/chatumkm_controller.dart';
import 'models/chatumkm_model.dart';
import 'package:flutter/material.dart';
import 'package:hvest/core/app_export.dart';
import 'package:hvest/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class ChatumkmPage extends StatelessWidget {
  ChatumkmController controller =
      Get.put(ChatumkmController(ChatumkmModel().obs));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.gray10001,
        body: Container(
            width: size.width,
            decoration: AppDecoration.fillGray10001,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                  width: size.width,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            width: size.width,
                            decoration: AppDecoration.fillIndigoA200.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderBL20),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgEllipse2649x60,
                                      height: getVerticalSize(49.00),
                                      width: getHorizontalSize(60.00)),
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                          height: getVerticalSize(73.00),
                                          width: getHorizontalSize(408.00),
                                          margin: getMargin(top: 16),
                                          child: Stack(
                                              alignment: Alignment.topLeft,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgEllipse262,
                                                    height:
                                                        getVerticalSize(49.00),
                                                    width: getHorizontalSize(
                                                        60.00),
                                                    alignment:
                                                        Alignment.bottomRight),
                                                CustomSearchView(
                                                    width: 387,
                                                    focusNode: FocusNode(),
                                                    controller: controller
                                                        .searchbarController,
                                                    hintText:
                                                        "msg_cari_obrolan_dan"
                                                            .tr,
                                                    alignment:
                                                        Alignment.topLeft,
                                                    prefix: Container(
                                                        margin: getMargin(
                                                            left: 16,
                                                            top: 13,
                                                            right: 7,
                                                            bottom: 13),
                                                        child: CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgSearch)),
                                                    prefixConstraints:
                                                        BoxConstraints(
                                                            minWidth:
                                                                getSize(19.00),
                                                            minHeight:
                                                                getSize(19.00)))
                                              ])))
                                ])),
                        GestureDetector(
                            onTap: () {
                              onTapRowellipsethirtyone();
                            },
                            child: Padding(
                                padding: getPadding(top: 27, bottom: 5),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          height: getVerticalSize(70.00),
                                          width: getHorizontalSize(71.00),
                                          child: Stack(
                                              alignment: Alignment.topRight,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgEllipse2710,
                                                    height: getSize(70.00),
                                                    width: getSize(70.00),
                                                    radius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                35.00)),
                                                    alignment:
                                                        Alignment.center),
                                                Align(
                                                    alignment:
                                                        Alignment.topRight,
                                                    child: Container(
                                                        width:
                                                            getHorizontalSize(
                                                                18.00),
                                                        padding:
                                                            getPadding(all: 3),
                                                        decoration: AppDecoration
                                                            .fillGray10001
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder8),
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
                                                                          12.00),
                                                                  width: getSize(
                                                                      12.00),
                                                                  decoration: BoxDecoration(
                                                                      color: ColorConstant
                                                                          .greenA700,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              getHorizontalSize(6.00))))
                                                            ])))
                                              ])),
                                      Padding(
                                          padding: getPadding(
                                              left: 8, top: 5, bottom: 13),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text("lbl_jacob_jones".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsSemiBold16),
                                                Container(
                                                    width: getHorizontalSize(
                                                        230.00),
                                                    margin: getMargin(top: 7),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgCheckmark13x22,
                                                              height:
                                                                  getVerticalSize(
                                                                      13.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      22.00),
                                                              margin: getMargin(
                                                                  top: 1,
                                                                  bottom: 5)),
                                                          Text(
                                                              "msg_hei_jacob_saya"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsRegular13Gray500)
                                                        ]))
                                              ])),
                                      Padding(
                                          padding: getPadding(
                                              left: 23, top: 10, bottom: 41),
                                          child: Text("lbl_06_32_pm".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtPoppinsRegular12))
                                    ])))
                      ]))
            ])));
  }

  onTapRowellipsethirtyone() {
    Get.toNamed(AppRoutes.roomchattwoScreen);
  }
}
