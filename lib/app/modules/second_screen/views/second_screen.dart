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
      body: ListView(
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
            ],
          )
        ],
      ),
    );
  }
}
