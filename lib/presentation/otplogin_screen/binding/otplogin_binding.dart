import '../controller/otplogin_controller.dart';
import 'package:get/get.dart';

class OtploginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OtploginController());
  }
}
