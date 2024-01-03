import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HeroBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HeroController>(() => HeroController());
  }
}
