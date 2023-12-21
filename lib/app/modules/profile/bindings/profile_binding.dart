import 'package:counter_app/app/modules/profile/controllers/profile_controller.dart';
import 'package:counter_app/app/modules/profile/providers/profile_provider.dart';
import 'package:get/get.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileProvider());
    Get.lazyPut<ProfileController>(
      () => ProfileController(profileProvider: Get.find()),
    );
  }
}
