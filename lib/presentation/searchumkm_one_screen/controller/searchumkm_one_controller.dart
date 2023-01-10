import 'package:hvest/core/app_export.dart';
import 'package:hvest/presentation/searchumkm_one_screen/models/searchumkm_one_model.dart';
import 'package:flutter/material.dart';

class SearchumkmOneController extends GetxController {
  TextEditingController searchbarController = TextEditingController();

  Rx<SearchumkmOneModel> searchumkmOneModelObj = SearchumkmOneModel().obs;

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
