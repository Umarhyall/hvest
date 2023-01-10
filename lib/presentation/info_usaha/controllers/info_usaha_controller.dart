import 'dart:core';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class InfoUsahaController extends GetxController {
  late ImagePicker imagePicker = ImagePicker();
  late ImagePicker imagePicker2 = ImagePicker();

  XFile? pickedImage = null;
  XFile? pickedImage2 = null;

  void resetImage() {
    pickedImage = null;
    update();
  }

  void selectImage() async {
    try {
      final checkDataImage =
          await imagePicker.pickImage(source: ImageSource.gallery);

      if (checkDataImage != null) {
        print(checkDataImage.name);
        print(checkDataImage.path);
        pickedImage = checkDataImage;
      }
      update();
    } catch (err) {
      print(err);
      pickedImage = null;
      update();
    }
  }

  void selectImage2() async {
    try {
      final checkDataImage2 =
          await imagePicker2.pickImage(source: ImageSource.gallery);

      if (checkDataImage2 != null) {
        print(checkDataImage2.name);
        print(checkDataImage2.path);
        pickedImage2 = checkDataImage2;
      }
      update();
    } catch (err) {
      print(err);
      pickedImage2 = null;
      update();
    }
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    imagePicker = ImagePicker();
    imagePicker2 = ImagePicker();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
