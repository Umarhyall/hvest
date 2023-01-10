import '../controller/login_investor_one_controller.dart';
import 'package:get/get.dart';

class LoginInvestorOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginInvestorOneController());
  }
}
