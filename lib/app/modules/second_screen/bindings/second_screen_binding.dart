import 'package:counter_app/app/modules/second_screen/controllers/second_screen_controller.dart';
import 'package:get/get.dart';

class SecondScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SecondScreenController>(
      () => SecondScreenController(),
    );
  }
}
