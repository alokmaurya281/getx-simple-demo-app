import 'dart:developer';

import 'package:counter_app/app/modules/custom/controllers/custom_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QRGeneratorController extends CustomController {
  TextEditingController dataController = TextEditingController();
  RxBool showQr = false.obs;
  final Key qrKey = GlobalKey();
  @override
  void onInit() {
    super.onInit();
    log("login init");
  }

  @override
  void onReady() {
    super.onReady();
    log("login ready");
  }

  void generateQr() => {showQr.value = true};

  @override
  void onClose() {
    dataController.dispose();
  }
}
