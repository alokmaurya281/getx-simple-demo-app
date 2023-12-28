import 'package:counter_app/app/modules/home/controllers/home_controller.dart';
import 'package:counter_app/app/routes/app_pages.dart';
import 'package:counter_app/app/utils/comment.dart';
import 'package:counter_app/app/utils/custom_button.dart';
import 'package:counter_app/app/utils/custom_message_card.dart';
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
                          text: 'QR Generator',
                          borderColor: Colors.red,
                          buttonHandler: () => Get.toNamed(Routes.QRGENERATOR),
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
                    ),
                    // Column(
                    //   children: [
                    //     SizedBox(
                    //       height: 800,
                    //       child: ListView.builder(
                    //           itemCount: 3,
                    //           itemBuilder: (context, index) {
                    //             List a = [];
                    //             List<Card> cards = [];
                    //             return Card(
                    //               child: Draggable(
                    //                 feedback: Card(child: DragTarget<Card>(
                    //                     builder: (context, cards, a) {
                    //                   return const Card(
                    //                     child: Text('nin'),
                    //                   );
                    //                 })),
                    //                 child: const Text('Drag me'),
                    //               ),
                    //             );
                    //           }),
                    //     ),
                    //     Card(
                    //       child: Dismissible(
                    //         key: UniqueKey(),
                    //         direction: DismissDirection.endToStart,
                    //         background: const ColoredBox(
                    //           color: Colors.red,
                    //           child: Align(
                    //             alignment: Alignment.centerRight,
                    //             child: Padding(
                    //               padding: EdgeInsets.all(16.0),
                    //               child:
                    //                   Icon(Icons.delete, color: Colors.white),
                    //             ),
                    //           ),
                    //         ),
                    //         child: const ListTile(
                    //           leading: Icon(Icons.dashboard_sharp),
                    //           title: Text('Dash'),
                    //           subtitle: Text('Hello!'),
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    const Column(
                      children: [
                        CustomMessageCard(),
                        CommentWidget(),
                        // Msgcard()
                      ],
                    ),
                  ],
                ),
              );
      },
    );
  }
}
