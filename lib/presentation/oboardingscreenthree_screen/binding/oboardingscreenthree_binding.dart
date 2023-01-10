import '../controller/oboardingscreenthree_controller.dart';
import 'package:get/get.dart';

class OboardingscreenthreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OboardingscreenthreeController());
  }
}
