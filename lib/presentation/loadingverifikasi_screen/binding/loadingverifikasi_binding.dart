import '../controller/loadingverifikasi_controller.dart';
import 'package:get/get.dart';

class LoadingverifikasiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoadingverifikasiController());
  }
}
