import 'package:hvest/core/app_export.dart';
import 'package:hvest/presentation/roomchatumkm_screen/models/roomchatumkm_model.dart';
import 'package:flutter/material.dart';

class RoomchatumkmController extends GetxController {
  TextEditingController searchbarController = TextEditingController();

  Rx<RoomchatumkmModel> roomchatumkmModelObj = RoomchatumkmModel().obs;

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
