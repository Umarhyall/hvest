import '../controller/searchumkm_one_controller.dart';
import 'package:get/get.dart';

class SearchumkmOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchumkmOneController());
  }
}
