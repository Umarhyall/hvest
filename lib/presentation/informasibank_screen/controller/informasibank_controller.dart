import 'package:hvest/core/app_export.dart';
import 'package:hvest/presentation/informasibank_screen/models/informasibank_model.dart';
import 'package:flutter/material.dart';

class InformasibankController extends GetxController {
  TextEditingController nomorRekeningOneController = TextEditingController();

  Rx<InformasibankModel> informasibankModelObj = InformasibankModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    nomorRekeningOneController.dispose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    informasibankModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    informasibankModelObj.value.dropdownItemList.refresh();
  }
}
