import 'package:get/get.dart';

import '../controllers/register_umkm_1on_controller.dart';

class RegisterUmkm1onBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterUmkm1onController>(
      () => RegisterUmkm1onController(),
    );
  }
}
