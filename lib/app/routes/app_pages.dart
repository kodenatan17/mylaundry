import 'package:get/get.dart';

import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/layanankg/bindings/layanankg_binding.dart';
import '../modules/layanankg/views/layanankg_view.dart';
import '../modules/layanansatuan/bindings/layanansatuan_binding.dart';
import '../modules/layanansatuan/views/layanansatuan_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/produksi/bindings/produksi_binding.dart';
import '../modules/produksi/views/produksi_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.PRODUKSI,
      page: () => ProduksiView(),
      binding: ProduksiBinding(),
    ),
    GetPage(
      name: _Paths.LAYANANSATUAN,
      page: () => LayanansatuanView(),
      binding: LayanansatuanBinding(),
    ),
    GetPage(
      name: _Paths.LAYANANKG,
      page: () => LayanankgView(),
      binding: LayanankgBinding(),
    ),
  ];
}
