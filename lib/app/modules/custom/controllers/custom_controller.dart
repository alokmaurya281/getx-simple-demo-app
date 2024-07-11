// ignore_for_file: prefer_interpolation_to_compose_strings

import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
// import 'package:simmpli/app/utils/session_manager.dart';

class CustomController extends GetxController {
  var connectionStatus = 0.obs;
  final Connectivity connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> connectivitySubscription;
// Set the default locale
  var logger = Logger();

  var defaultLocalec = 'en'.obs;

  @override
  void onInit() {
    super.onInit();

    logger.d('Custom Init');

    // SessionManager.init();
    changelang(defaultLocalec.string);

    initConnectivity();
    connectivitySubscription =
        connectivity.onConnectivityChanged.listen(updateConnectionStatus);
  }

  Future<void> initConnectivity() async {
    ConnectivityResult? result;
    try {
      result = await connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      logger.e("connectivity error:" + e.toString());
    }
    return updateConnectionStatus(result!);
  }

  updateConnectionStatus(ConnectivityResult result) {
    switch (result) {
      case ConnectivityResult.wifi:
        connectionStatus.value = 1;
        update();
        break;
      case ConnectivityResult.mobile:
        connectionStatus.value = 2;
        update();
        break;
      case ConnectivityResult.none:
        connectionStatus.value = 0;
        update();
        break;
      default:
        Get.snackbar("Network Error", "Failed to get network connection");
        break;
    }
  }

  void changelang(String lang) {
    defaultLocalec = lang.obs;
    Intl.defaultLocale = lang;
  }

  @override
  void onClose() {
    super.onClose();
    connectivitySubscription.cancel();
  }
}
