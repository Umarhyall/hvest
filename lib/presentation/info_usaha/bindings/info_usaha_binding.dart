import 'package:get/get.dart';

import '../controllers/info_usaha_controller.dart';

class InfoUsahaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InfoUsahaController>(
      () => InfoUsahaController(),
    );
  }
}
