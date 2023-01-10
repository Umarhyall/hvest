import '../controller/informasiusaha_controller.dart';
import 'package:get/get.dart';

class InformasiusahaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InformasiusahaController());
  }
}
