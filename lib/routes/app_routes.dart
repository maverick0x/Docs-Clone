part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const docs = _Paths.docsPath;
}

abstract class _Paths {
  _Paths._();

  static const docsPath = '/';
}
