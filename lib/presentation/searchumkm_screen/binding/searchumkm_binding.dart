import '../controller/searchumkm_controller.dart';
import 'package:get/get.dart';

class SearchumkmBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchumkmController());
  }
}
