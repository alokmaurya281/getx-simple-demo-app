import 'package:counter_app/app/modules/custom/controllers/custom_controller.dart';
import 'package:get/get.dart';

class HomeController extends CustomController {
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
  void decrement() => count.value--;
}
