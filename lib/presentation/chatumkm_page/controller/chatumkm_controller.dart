import 'package:hvest/core/app_export.dart';
import 'package:hvest/presentation/chatumkm_page/models/chatumkm_model.dart';
import 'package:flutter/material.dart';

class ChatumkmController extends GetxController {
  ChatumkmController(this.chatumkmModelObj);

  TextEditingController searchbarController = TextEditingController();

  Rx<ChatumkmModel> chatumkmModelObj;

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
