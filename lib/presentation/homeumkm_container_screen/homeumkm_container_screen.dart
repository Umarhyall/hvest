import 'controller/homeumkm_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:hvest/core/app_export.dart';
import 'package:hvest/presentation/chatumkm_page/chatumkm_page.dart';
import 'package:hvest/presentation/homeumkm_page/homeumkm_page.dart';
import 'package:hvest/widgets/custom_bottom_bar.dart';

class HomeumkmContainerScreen extends GetWidget<HomeumkmContainerController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.gray10001,
      body: Navigator(
          key: Get.nestedKey(1),
          initialRoute: AppRoutes.homeumkmPage,
          onGenerateRoute: (routeSetting) => GetPageRoute(
              page: () => getCurrentPage(routeSetting.name!),
              transition: Transition.noTransition)),
      bottomNavigationBar: CustomBottomBar(
        onChanged: (BottomBarEnum type) {
          Get.toNamed(getCurrentRoute(type), id: 1);
        },
      ),
    );
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeumkmPage;
      case BottomBarEnum.Iconemail:
        return AppRoutes.chatumkmPage;
      case BottomBarEnum.Mail31x32:
        return "/";
      case BottomBarEnum.User33x29:
        return "/";
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeumkmPage:
        return HomeumkmPage();
      case AppRoutes.chatumkmPage:
        return ChatumkmPage();
      default:
        return DefaultWidget();
    }
  }
}
