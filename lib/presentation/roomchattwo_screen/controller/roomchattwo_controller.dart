import 'package:hvest/core/app_export.dart';
import 'package:hvest/presentation/roomchattwo_screen/models/roomchattwo_model.dart';
import 'package:flutter/material.dart';

class RoomchattwoController extends GetxController {
  TextEditingController searchbarController = TextEditingController();

  Rx<RoomchattwoModel> roomchattwoModelObj = RoomchattwoModel().obs;

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
