// ignore_for_file: unnecessary_overrides, prefer_interpolation_to_compose_strings

import 'dart:developer';

import 'package:counter_app/app/modules/custom/controllers/custom_controller.dart';
import 'package:counter_app/app/modules/profile/models/profile_model.dart';
import 'package:counter_app/app/modules/profile/providers/profile_provider.dart';
import 'package:get/get.dart';

class ProfileController extends CustomController with StateMixin<ProfileModel> {
  final ProfileProvider profileProvider;
  ProfileController({required this.profileProvider});

  RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    log('profile init');
  }

  @override
  void onReady() {
    getProfile();
    super.onReady();
  }

  void getProfile() {
    isLoading.value = true;
    profileProvider.getModel().then((value) {
      isLoading.value = false;
      final data = value;
      // log("profile : ${data!.toJson()}");
      change(data, status: RxStatus.success());
    }, onError: (err) {
      isLoading.value = false;
      log('Error' + err.toString());
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
