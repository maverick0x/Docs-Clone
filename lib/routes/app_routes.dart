part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const auth = _Paths.authPath;
}

abstract class _Paths {
  _Paths._();

  static const authPath = '/';
}
