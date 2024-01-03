import 'package:counter_app/app/modules/home/controllers/home_controller.dart';
import 'package:counter_app/app/modules/second_screen/controllers/second_screen_controller.dart';
import 'package:counter_app/app/routes/app_pages.dart';
import 'package:counter_app/app/utils/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Secondscreen extends GetView<SecondScreenController> {
  const Secondscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
        centerTitle: true,
      ),
      body: Hero(
        tag: 'hero1',
        child: ListView(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 16,
                ),
                Obx(
                  () => Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        homeController.count.value.toString(),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomButton(
                  text: 'Navigate to Profile Screen',
                  borderColor: Colors.green,
                  buttonHandler: () {
                    Get.toNamed(Routes.PROFILESCREEN);
                  },
                  width: 250,
                  height: 45,
                ),
                const SizedBox(
                  height: 16,
                ),
                //create animation
                Obx(
                  () => AnimatedContainer(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black,
                    ),
                    width: controller.containerWidth.value,
                    height: controller.containerHeight.value,
                    duration: const Duration(
                      seconds: 2,
                    ),
                    curve: Curves.easeInOutBack,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),

                CustomButton(
                  text: 'Animate',
                  borderColor: Colors.black,
                  buttonHandler: () {
                    controller.animate();
                  },
                  width: 150,
                  height: 45,
                ),
                const SizedBox(
                  height: 16,
                ),
                //custtom animation using AnimationBuilder Widget opacity
                AnimatedBuilder(
                  animation: controller.animation,
                  builder: (context, child) {
                    return Opacity(
                      opacity: controller.animation.value,
                      child: Container(
                        width: controller.growingAnimation.value,
                        height: controller.growingAnimation.value,
                        color: Colors.green,
                        child: const Center(
                          child: Text(
                            'Animated Widget',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
