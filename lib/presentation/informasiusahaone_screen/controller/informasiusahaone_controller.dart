import 'package:hvest/core/app_export.dart';
import 'package:hvest/presentation/informasiusahaone_screen/models/informasiusahaone_model.dart';
import 'package:flutter/material.dart';

class InformasiusahaoneController extends GetxController {
  TextEditingController namaUsahaOneController = TextEditingController();

  TextEditingController bidangUsahaOneController = TextEditingController();

  TextEditingController alamatController = TextEditingController();

  Rx<InformasiusahaoneModel> informasiusahaoneModelObj =
      InformasiusahaoneModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    namaUsahaOneController.dispose();
    bidangUsahaOneController.dispose();
    alamatController.dispose();
  }
}
