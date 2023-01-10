import '../controller/oboardingscreenone_controller.dart';
import 'package:get/get.dart';

class OboardingscreenoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OboardingscreenoneController());
  }
}
