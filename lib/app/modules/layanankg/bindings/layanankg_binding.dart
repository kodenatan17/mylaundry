import 'package:get/get.dart';

import '../controllers/layanankg_controller.dart';

class LayanankgBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LayanankgController>(
      () => LayanankgController(),
    );
  }
}
