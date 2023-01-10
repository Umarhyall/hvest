import 'package:get/get.dart';

import '../controllers/identitas_pemilik_controller.dart';

class IdentitasPemilikBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IdentitasPemilikController>(
      () => IdentitasPemilikController(),
    );
  }
}
