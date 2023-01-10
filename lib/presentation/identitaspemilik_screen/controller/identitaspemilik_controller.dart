import 'package:hvest/core/app_export.dart';
import 'package:hvest/presentation/identitaspemilik_screen/models/identitaspemilik_model.dart';
import 'package:flutter/material.dart';

class IdentitaspemilikController extends GetxController {
  TextEditingController nomorKTPController = TextEditingController();

  TextEditingController tempatLahirOneController = TextEditingController();

  Rx<IdentitaspemilikModel> identitaspemilikModelObj =
      IdentitaspemilikModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    nomorKTPController.dispose();
    tempatLahirOneController.dispose();
  }
}
