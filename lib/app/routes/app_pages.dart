// ignore_for_file: constant_identifier_names

import 'package:counter_app/app/modules/hero_anim/bindings/hero_binding.dart';
import 'package:counter_app/app/modules/hero_anim/views/hero_view.dart';
import 'package:counter_app/app/modules/profile/bindings/profile_binding.dart';
import 'package:counter_app/app/modules/profile/views/profile_view.dart';
import 'package:counter_app/app/modules/qr_generator/bindings/qr_generator_binding.dart';
import 'package:counter_app/app/modules/qr_generator/views/qr_generator_view.dart';
import 'package:counter_app/app/modules/second_screen/bindings/second_screen_binding.dart';
import 'package:counter_app/app/modules/second_screen/views/second_screen.dart';
import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
      transition: Transition.zoom,
      transitionDuration: const Duration(
        seconds: 1,
      ),
    ),
    GetPage(
      name: _Paths.SECONDSCREEN,
      page: () => const Secondscreen(),
      binding: SecondScreenBinding(),
      // transition: Transition.rightToLeft,
    ),
    GetPage(
      name: _Paths.PROFILESCREEN,
      page: () => ProfileView(),
      binding: ProfileBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: _Paths.QRGENERATOR,
      page: () => const QRGeneratorView(),
      binding: QRGeneratorBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: _Paths.HEROPAGE,
      page: () => const HeroView(),
      binding: HeroBinding(),
      transition: Transition.rightToLeft,
    ),
  ];
}
