import 'package:counter_app/app/modules/profile/models/profile_model.dart';
import 'package:counter_app/app/resources/constants.dart';
import 'package:get/get.dart';

class ProfileProvider extends GetConnect {
  @override
  void onInit() {
    super.onInit();
    httpClient.defaultContentType = "application/json";
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return ProfileModel.fromJson(map);
      if (map is List)
        return map.map((item) => ProfileModel.fromJson(item)).toList();
    };

    httpClient.baseUrl = baseUrl;
  }

  Future<ProfileModel?> getModel() async {
    final response = await get(ApiUrls.userProfile);
    return response.body;
  }
}
