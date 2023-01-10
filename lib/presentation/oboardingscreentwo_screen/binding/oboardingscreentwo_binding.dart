import '../controller/oboardingscreentwo_controller.dart';
import 'package:get/get.dart';

class OboardingscreentwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OboardingscreentwoController());
  }
}
