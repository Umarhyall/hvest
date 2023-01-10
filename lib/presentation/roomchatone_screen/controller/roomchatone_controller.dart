import 'package:hvest/core/app_export.dart';
import 'package:hvest/presentation/roomchatone_screen/models/roomchatone_model.dart';
import 'package:flutter/material.dart';

class RoomchatoneController extends GetxController {
  TextEditingController searchbarController = TextEditingController();

  Rx<RoomchatoneModel> roomchatoneModelObj = RoomchatoneModel().obs;

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
