import '../controller/informasibank_controller.dart';
import 'package:get/get.dart';

class InformasibankBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InformasibankController());
  }
}
