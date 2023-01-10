import 'package:hvest/core/app_export.dart';
import 'package:hvest/presentation/searchumkm_screen/models/searchumkm_model.dart';
import 'package:flutter/material.dart';

class SearchumkmController extends GetxController {
  TextEditingController searchbarController = TextEditingController();

  Rx<SearchumkmModel> searchumkmModelObj = SearchumkmModel().obs;

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
