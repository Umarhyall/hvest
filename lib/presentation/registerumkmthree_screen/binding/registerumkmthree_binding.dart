import '../controller/registerumkmthree_controller.dart';
import 'package:get/get.dart';

class RegisterumkmthreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterumkmthreeController());
  }
}
