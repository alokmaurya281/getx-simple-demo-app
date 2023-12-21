import 'package:counter_app/app/modules/home/controllers/home_controller.dart';
import 'package:counter_app/app/routes/app_pages.dart';
import 'package:counter_app/app/utils/custom_button.dart';
import 'package:counter_app/app/utils/empty_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return controller.connectionStatus.value == 0
            ? EmptyPage(
                lottie: 'assets/images/no_net.gif',
                description: 'No Internet Please Try Again !!!',
                retry: () {},
              )
            : Scaffold(
                appBar: AppBar(
                  title: const Text('Counter App'),
                  centerTitle: true,
                  automaticallyImplyLeading: false,
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
                              child: Text(controller.count.value.toString()),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        CustomButton(
                          text: 'Increase',
                          borderColor: Colors.red,
                          buttonHandler: () => controller.increment(),
                          width: 150,
                          height: 45,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        CustomButton(
                          text: 'Decrease',
                          borderColor: Colors.red,
                          buttonHandler: () => controller.decrement(),
                          width: 150,
                          height: 45,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        CustomButton(
                          text: 'Navigate to second screen',
                          borderColor: Colors.red,
                          buttonHandler: () => Get.toNamed(Routes.SECONDSCREEN),
                          width: 250,
                          height: 45,
                        ),
                      ],
                    )
                  ],
                ),
              );
      },
    );
  }
}
