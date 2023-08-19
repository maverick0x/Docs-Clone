import 'package:get/get.dart';
import 'package:google_docs_clone/app/controller/docs_controller.dart';

class DocsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DocsController>(
      () => DocsController(),
    );
  }
}
