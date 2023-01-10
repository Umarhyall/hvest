import '../controller/otpregister_controller.dart';
import 'package:get/get.dart';

class OtpregisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OtpregisterController());
  }
}
