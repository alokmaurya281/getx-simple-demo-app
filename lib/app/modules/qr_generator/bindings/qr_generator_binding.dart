import 'package:counter_app/app/modules/qr_generator/controllers/qr_generator_controller.dart';
import 'package:get/get.dart';

class QRGeneratorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QRGeneratorController>(
      () => QRGeneratorController(),
    );
  }
}
