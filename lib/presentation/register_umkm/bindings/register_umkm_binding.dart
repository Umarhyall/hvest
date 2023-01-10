import 'package:get/get.dart';

import '../controllers/register_umkm_controller.dart';

class OtpregisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterUmkmController>(
      () => RegisterUmkmController(),
    );
  }
}
