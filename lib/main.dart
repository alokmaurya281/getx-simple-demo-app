import 'package:counter_app/app/modules/custom/bindings/custom_binding.dart';
import 'package:counter_app/app/resources/strings.dart';
import 'package:counter_app/app/resources/styles.dart';
import 'package:counter_app/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: appName,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      initialBinding: CustomBinding(),
    ),
  );
}
