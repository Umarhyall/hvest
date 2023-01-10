import 'package:flutter/material.dart';
import 'package:hvest/core/app_export.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({this.onChanged});

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHome,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIconemail,
      type: BottomBarEnum.Iconemail,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgMail31x32,
      type: BottomBarEnum.Mail31x32,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUser33x29,
      type: BottomBarEnum.User33x29,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        decoration: BoxDecoration(
          color: ColorConstant.whiteA700,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              getHorizontalSize(
                50.00,
              ),
            ),
            topRight: Radius.circular(
              getHorizontalSize(
                50.00,
              ),
            ),
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: CustomImageView(
                svgPath: bottomMenuList[index].icon,
                height: getVerticalSize(
                  28.00,
                ),
                width: getHorizontalSize(
                  32.00,
                ),
                color: ColorConstant.gray80001,
              ),
              activeIcon: CustomImageView(
                svgPath: bottomMenuList[index].icon,
                height: getVerticalSize(
                  31.00,
                ),
                width: getHorizontalSize(
                  32.00,
                ),
                color: ColorConstant.blueA400,
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged!(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Iconemail,
  Mail31x32,
  User33x29,
}

class BottomMenuModel {
  BottomMenuModel({required this.icon, required this.type});

  String icon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CustomImageView(
                imagePath: ImageConstant.imgKardus,
                // height: getSize(
                //   71.00,
                // ),
                // width: getSize(
                //   71.00,
                // ),
                // radius: BorderRadius.circular(
                //   getHorizontalSize(
                //     35.00,
                //   ),
                // ),
              ),
            ),
            SizedBox(
              height: getHorizontalSize(50),
            ),
            Center(
              child: Text(
                '    Mohon maaf laman sedang \n dalam prosess pembangunan ...',
                style: AppStyle.txtPoppinsSemiBold1512Bluegray40001,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DefaultWidgetsatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgKardus,
              // height: getSize(
              //   71.00,
              // ),
              // width: getSize(
              //   71.00,
              // ),
              // radius: BorderRadius.circular(
              //   getHorizontalSize(
              //     35.00,
              //   ),
              // ),
            ),
            SizedBox(
              height: getHorizontalSize(50),
            ),
            Text(
              'Ups belum ada investor yang anda simpan ...',
              style: AppStyle.txtPoppinsSemiBold1512Bluegray40001,
            ),
          ],
        ),
      ),
    );
  }
}
