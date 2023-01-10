import '../controller/loginumkmone_controller.dart';
import 'package:get/get.dart';

class LoginumkmoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginumkmoneController());
  }
}
