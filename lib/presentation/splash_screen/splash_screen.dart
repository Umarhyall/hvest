import 'package:hvest/widgets/custom_size.dart';

import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:hvest/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      body: GestureDetector(
        onTap: () {
          onTapSplashScreen();
        },
        child: Container(
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgHvest2x1,
                height: getVerticalSize(136.00),
                width: getHorizontalSize(122.00),
                margin: (getMargin(
                  bottom: getProportionateScreenHeight(5),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  onTapSplashScreen() {
    Get.toNamed(AppRoutes.oboardingscreenoneScreen);
  }
}
