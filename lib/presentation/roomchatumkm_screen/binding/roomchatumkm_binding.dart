import '../controller/roomchatumkm_controller.dart';
import 'package:get/get.dart';

class RoomchatumkmBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RoomchatumkmController());
  }
}
