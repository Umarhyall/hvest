import 'package:flutter/material.dart';
import 'package:hvest/core/app_export.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  CustomAppBar(
      {required this.height,
      this.styleType,
      this.leadingWidth,
      this.leading,
      this.title,
      this.centerTitle,
      this.actions});

  double height;

  Style? styleType;

  double? leadingWidth;

  Widget? leading;

  Widget? title;

  bool? centerTitle;

  List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        size.width,
        height,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgFillIndigoA200:
        return Container(
          height: getVerticalSize(
            122.00,
          ),
          width: size.width,
          decoration: BoxDecoration(
            color: ColorConstant.indigoA200,
          ),
        );
      case Style.bgFillBlueA400:
        return Container(
          height: getVerticalSize(
            119.00,
          ),
          width: size.width,
          decoration: BoxDecoration(
            color: ColorConstant.blueA400,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(
                getHorizontalSize(
                  20.00,
                ),
              ),
              bottomRight: Radius.circular(
                getHorizontalSize(
                  20.00,
                ),
              ),
            ),
          ),
        );
      case Style.bgFillBlueA400_1:
        return Container(
          height: getVerticalSize(
            144.00,
          ),
          width: size.width,
          decoration: BoxDecoration(
            color: ColorConstant.blueA400,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(
                getHorizontalSize(
                  10.00,
                ),
              ),
              bottomRight: Radius.circular(
                getHorizontalSize(
                  10.00,
                ),
              ),
            ),
          ),
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgFillIndigoA200,
  bgFillBlueA400,
  bgFillBlueA400_1,
}
