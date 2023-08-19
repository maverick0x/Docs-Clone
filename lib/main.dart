import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_docs_clone/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const DocsCloneApp());
}

class DocsCloneApp extends StatelessWidget {
  const DocsCloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
    );
  }
}
