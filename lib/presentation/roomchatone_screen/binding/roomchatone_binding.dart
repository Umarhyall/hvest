import '../controller/roomchatone_controller.dart';
import 'package:get/get.dart';

class RoomchatoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RoomchatoneController());
  }
}
