import 'package:hvest/core/app_export.dart';
import 'package:hvest/presentation/informasiusaha_screen/models/informasiusaha_model.dart';
import 'package:flutter/material.dart';

class InformasiusahaController extends GetxController {
  TextEditingController namaUsahaOneController = TextEditingController();

  TextEditingController bidangUsahaOneController = TextEditingController();

  TextEditingController alamatController = TextEditingController();

  Rx<InformasiusahaModel> informasiusahaModelObj = InformasiusahaModel().obs;

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
