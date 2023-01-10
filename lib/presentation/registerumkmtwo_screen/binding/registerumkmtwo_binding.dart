import '../controller/registerumkmtwo_controller.dart';
import 'package:get/get.dart';

class RegisterumkmtwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterumkmtwoController());
  }
}
