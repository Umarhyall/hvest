import '../controller/homeumkm_container_controller.dart';
import 'package:get/get.dart';

class HomeumkmContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeumkmContainerController());
  }
}
