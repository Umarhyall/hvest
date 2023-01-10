import 'package:get/get.dart';

import '../controllers/info_rekening_controller.dart';

class InfoRekeningBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InfoRekeningController>(
      () => InfoRekeningController(),
    );
  }
}
