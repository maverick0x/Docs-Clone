import 'package:get/get.dart';

import '../app/bindings/auth_binding.dart';
import '../app/view/auth_view.dart';

part 'app_routes.dart';

abstract class AppPages {
  AppPages._();

  static const initial = Routes.auth;

  static final routes = [
    GetPage(
      name: _Paths.authPath,
      page: () => const AuthView(),
      binding: AuthBinding(),
    ),
  ];
}
