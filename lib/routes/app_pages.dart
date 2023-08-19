import 'package:get/get.dart';

import '../app/bindings/docs_binding.dart';
import '../app/view/docs_view.dart';

part 'app_routes.dart';

abstract class AppPages {
  AppPages._();

  static const initial = Routes.docs;

  static final routes = [
    GetPage(
      name: _Paths.docsPath,
      page: () => const DocsView(),
      binding: DocsBinding(),
    ),
  ];
}
