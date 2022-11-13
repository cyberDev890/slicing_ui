part of 'app_router.dart';

abstract class Routes {
  Routes._();
  static const home = _Paths.home;
  static const detailFurniture = _Paths.detailFurniture;
}

abstract class _Paths {
  _Paths._();
  static const home = '/';
  static const detailFurniture = 'detail_furniture';
}
