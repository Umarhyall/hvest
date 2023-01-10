import '../searchumkm_screen/widgets/searchumkm_item_widget.dart';
import 'controller/searchumkm_controller.dart';
import 'models/searchumkm_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hvest/core/app_export.dart';
import 'package:hvest/widgets/app_bar/appbar_image.dart';
import 'package:hvest/widgets/app_bar/appbar_searchview.dart';
import 'package:hvest/widgets/app_bar/custom_app_bar.dart';

class SearchumkmScreen extends GetWidget<SearchumkmController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.gray10001,
      appBar: CustomAppBar(
          height: getVerticalSize(122.00),
          leadingWidth: 46,
          leading: AppbarImage(
              height: getSize(32.00),
              width: getSize(32.00),
              svgPath: ImageConstant.imgArrowleft,
              margin: getMargin(left: 14, bottom: 60),
              onTap: onTapArrowleft5),
          title: AppbarSearchview(
              hintText: "msg_investor_semarang".tr,
              controller: controller.searchbarController,
              margin: getMargin(left: 10, bottom: 60)),
          // actions: [
          //   AppbarImage(
          //       height: getVerticalSize(122.00),
          //       width: getHorizontalSize(109.00),

          // ],
          styleType: Style.bgFillIndigoA200),
      body: Container(
        margin: getMargin(left: 20, right: 21),
        decoration: AppDecoration.fillGray10001,
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Obx(
                  () => GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getVerticalSize(203.00),
                        crossAxisCount: 2,
                        mainAxisSpacing: getHorizontalSize(23.00),
                        crossAxisSpacing: getHorizontalSize(23.00)),
                    physics: BouncingScrollPhysics(),
                    itemCount: controller
                        .searchumkmModelObj.value.searchumkmItemList.length,
                    itemBuilder: (context, index) {
                      SearchumkmItemModel model = controller
                          .searchumkmModelObj.value.searchumkmItemList[index];
                      return SearchumkmItemWidget(model,
                          onTapColumnellipsetwentyseven:
                              onTapColumnellipsetwentyseven);
                    },
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  onTapColumnellipsetwentyseven() {
    Get.toNamed(AppRoutes.profileserachumkmScreen);
  }

  onTapArrowleft5() {
    Get.back();
  }
}
