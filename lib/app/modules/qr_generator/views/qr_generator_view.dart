import 'dart:developer';
import 'package:image_gallery_saver/image_gallery_saver.dart';

import 'dart:typed_data';

import 'package:screenshot/screenshot.dart';
import 'package:counter_app/app/modules/qr_generator/controllers/qr_generator_controller.dart';
import 'package:counter_app/app/utils/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRGeneratorView extends GetView<QRGeneratorController> {
  const QRGeneratorView({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenshotController screenshotController = ScreenshotController();
    Widget qr = QrImageView(
      data: controller.dataController.text,
      size: 200,
      version: QrVersions.auto,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Generator'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Obx(
            () => Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    controller: controller.dataController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),
                        enabled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),
                        hintText: 'Enter any text or url etc...'),
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyMedium!.color,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomButton(
                    text: 'Generate',
                    borderColor: Colors.red,
                    buttonHandler: () {
                      // log('${controller.dataController.text.toString()} Text');
                      if (controller.dataController.text.isNotEmpty) {
                        controller.generateQr();
                        // log('${controller.showQr.toString()} Hii');
                      }
                    },
                    width: 200,
                    height: 45,
                  ),
                  const SizedBox(height: 16),
                  controller.showQr.value
                      ? GestureDetector(
                          onTap: () async {
                            Uint8List? screenshot = await screenshotController
                                .captureFromWidget(qr);

                            var time = DateTime.now()
                                .millisecondsSinceEpoch
                                .toString();
                            screenshotController.captureAndSave(
                              'assets/images/',
                              fileName: 'qr_code$time',
                              pixelRatio: 200,
                              delay: Duration.zero,
                            );
                            await ImageGallerySaver.saveImage(
                              screenshot,
                              quality: 100,
                              name: 'screenshot_image$time',
                            );
                            log('Image saved');
                          },
                          child: Screenshot(
                              controller: screenshotController, child: qr),
                        )
                      : const Text('')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
