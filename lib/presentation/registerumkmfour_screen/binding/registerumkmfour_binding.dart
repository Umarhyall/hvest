import '../controller/registerumkmfour_controller.dart';
import 'package:get/get.dart';

class RegisterumkmfourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterumkmfourController());
  }
}
