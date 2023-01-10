import 'package:get/get.dart';

import '../controllers/register_umkm_3on_controller.dart';

class RegisterUmkm3onBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterUmkm3onController>(
      () => RegisterUmkm3onController(),
    );
  }
}
