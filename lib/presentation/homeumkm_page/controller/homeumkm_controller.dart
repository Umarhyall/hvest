import 'package:hvest/core/app_export.dart';
import 'package:hvest/presentation/homeumkm_page/models/homeumkm_model.dart';
import 'package:flutter/material.dart';

class HomeumkmController extends GetxController {
  HomeumkmController(this.homeumkmModelObj);

  TextEditingController searchbarController = TextEditingController();

  Rx<HomeumkmModel> homeumkmModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchbarController.dispose();
  }
}
