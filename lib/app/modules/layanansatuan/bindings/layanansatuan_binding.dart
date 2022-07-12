import 'package:get/get.dart';

import '../controllers/layanansatuan_controller.dart';

class LayanansatuanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LayanansatuanController>(
      () => LayanansatuanController(),
    );
  }
}
