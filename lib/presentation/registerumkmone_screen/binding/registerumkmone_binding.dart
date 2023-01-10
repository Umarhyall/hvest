import '../controller/registerumkmone_controller.dart';
import 'package:get/get.dart';

class RegisterumkmoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterumkmoneController());
  }
}
