import '../controller/profileserachumkm_controller.dart';
import 'package:get/get.dart';

class ProfileserachumkmBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileserachumkmController());
  }
}
