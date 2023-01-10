import '../controller/identitaspemilik_controller.dart';
import 'package:get/get.dart';

class IdentitaspemilikBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IdentitaspemilikController());
  }
}
