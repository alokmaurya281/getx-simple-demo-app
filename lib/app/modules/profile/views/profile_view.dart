import 'package:counter_app/app/modules/profile/controllers/profile_controller.dart';
import 'package:counter_app/app/modules/profile/models/profile_model.dart';
import 'package:counter_app/app/modules/profile/providers/profile_provider.dart';
import 'package:counter_app/app/utils/empty_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: use_key_in_widget_constructors
class ProfileView extends GetView<ProfileController> {
  final ProfileProvider profileProvider = Get.put(ProfileProvider());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      init: ProfileController(profileProvider: Get.find()),
      builder: (controller) {
        return controller.connectionStatus.value == 0
            ? EmptyPage(
                lottie: 'assets/images/no_net.gif',
                description: 'No Internet Please try again !!',
                retry: () {},
              )
            : Scaffold(
                appBar: AppBar(
                  title: const Text('Profile'),
                  centerTitle: true,
                ),
                body: controller.isLoading.value
                    ? const Center(
                        child: CircularProgressIndicator.adaptive(),
                      )
                    : controller.obx(
                        (data) {
                          return ListView(
                            children: [
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  SizedBox(
                                    width: 200,
                                    height: 200,
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          data!.data!.avatar.toString()),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Text(
                                    data.data!.firstName.toString(),
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Theme.of(context)
                                          .textTheme
                                          .headlineMedium!
                                          .color,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Text(
                                    data.data!.email.toString(),
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Theme.of(context)
                                          .textTheme
                                          .headlineMedium!
                                          .color,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          );
                        },
                      ),
              );
      },
    );
  }
}
