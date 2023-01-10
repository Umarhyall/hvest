import '../controller/daftar_investor_controller.dart';
import 'package:get/get.dart';

class DaftarInvestorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DaftarInvestorController());
  }
}
