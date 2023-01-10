import '../controller/aktivasiumkm_controller.dart';
import 'package:get/get.dart';

class AktivasiumkmBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AktivasiumkmController());
  }
}
