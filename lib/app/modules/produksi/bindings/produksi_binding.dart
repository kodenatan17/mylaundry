import 'package:get/get.dart';

import '../controllers/produksi_controller.dart';

class ProduksiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProduksiController>(
      () => ProduksiController(),
    );
  }
}
