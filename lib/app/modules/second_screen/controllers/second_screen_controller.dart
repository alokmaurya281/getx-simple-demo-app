// ignore_for_file: unnecessary_overrides

import 'package:counter_app/app/modules/custom/controllers/custom_controller.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SecondScreenController extends CustomController
    with GetTickerProviderStateMixin {
  RxDouble containerWidth = 100.0.obs;
  RxDouble containerHeight = 100.0.obs;
  late AnimationController animationController;
  late Animation<double> animation;
  late Animation<double> growingAnimation;

  @override
  void onInit() {
    super.onInit();
    animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    // Tween for animating the values from 0.0 to 1.0
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.easeInOut,
    ));
    growingAnimation = Tween<double>(begin: 50.0, end: 200.0).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeInOut),
    );

    // Repeat the animation
    animationController.repeat();
    // Repeaonly for oncet the animation
    // animationController.forward();
  }

  @override
  void onReady() {
    super.onReady();
   
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }

  void animate() {
    containerHeight.value = 200.0;
    containerWidth.value = 200.0;
  }
}
