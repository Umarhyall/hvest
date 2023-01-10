import 'package:get/get.dart';

import '../controllers/register_umkm_2on_controller.dart';

class RegisterUmkm2onBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterUmkm2onController>(
      () => RegisterUmkm2onController(),
    );
  }
}
