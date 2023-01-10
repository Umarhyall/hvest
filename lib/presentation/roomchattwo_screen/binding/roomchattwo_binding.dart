import '../controller/roomchattwo_controller.dart';
import 'package:get/get.dart';

class RoomchattwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RoomchattwoController());
  }
}
