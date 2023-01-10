import '../controller/loginumkmtwo_controller.dart';
import 'package:get/get.dart';

class LoginumkmtwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginumkmtwoController());
  }
}
