import 'dart:async';

import 'package:hvest/presentation/aktivasiumkm_screen/aktivasiumkm_screen.dart';
import 'package:hvest/presentation/homeumkm_container_screen/homeumkm_container_screen.dart';

import 'controller/loadingverifikasi_controller.dart';
import 'package:flutter/material.dart';
import 'package:hvest/core/app_export.dart';

class LoadingverifikasiScreen extends GetWidget<LoadingverifikasiController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.gray100,
      body: GestureDetector(
        onTap: () {
          onTapColumnmohontunggubeberapa();
        },
        child: Container(
          width: size.width,
          padding: getPadding(left: 24, right: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: getPadding(top: 1),
                  child: Text("msg_mohon_tunggu_beberapa".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsSemiBold24Black900)),
              Padding(
                padding: getPadding(top: 5),
                child: Text("msg_kami_sedang_memverifikasi".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular18),
              ),
              SizedBox(
                height: getHorizontalSize(50),
              ),
              Loadingbiru(),
              Container(
                width: getHorizontalSize(343.00),
                margin: getMargin(left: 18, top: 29, right: 19),
                decoration: AppDecoration.fillGray200
                    .copyWith(borderRadius: BorderRadiusStyle.circleBorder11),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,

                  // children: [
                  //   Container(
                  //     height: getVerticalSize(22.00),
                  //     width: getHorizontalSize(45.00),
                  //     decoration: BoxDecoration(
                  //       borderRadius:
                  //           BorderRadius.circular(getHorizontalSize(11.00)),
                  //       gradient: LinearGradient(
                  //         begin: Alignment(0.5, 0),
                  //         end: Alignment(0.5, 1),
                  //         colors: [
                  //           ColorConstant.indigoA200,
                  //           ColorConstant.deepPurple90093
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  onTapColumnmohontunggubeberapa() {
    Get.toNamed(AppRoutes.aktivasiumkmScreen);
  }
}

class Loadingbiru extends StatefulWidget {
  const Loadingbiru({Key? key}) : super(key: key);

  @override
  State<Loadingbiru> createState() => _LoadingbiruState();
}

class _LoadingbiruState extends State<Loadingbiru> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => AktivasiumkmScreen(),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return (CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
    ));
  }
}
