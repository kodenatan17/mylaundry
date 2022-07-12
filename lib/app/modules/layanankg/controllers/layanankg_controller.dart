import 'package:get/get.dart';

class LayanankgController extends GetxController {
  //TODO: Implement LayanankgController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  final List<Map<String, dynamic>> allLayanan = [
    {
      "name" : "Layanan Normal",
      "icon" : "assets/icons/layanan-normal.png",
      "harga" : "Rp. 6.000/Kg",
    },
    {
      "name" : "Layanan Ekspress",
      "icon" : "assets/icons/layanan-ekspress.png",
      "harga" : "Rp. 12.000/Kg",
    },
    {
      "name" : "Layanan 2 Hari",
      "icon" : "assets/icons/layanan-2hari.png",
      "harga" : "Rp. 5.000/Kg",
    },
    {
      "name" : "Layanan Titipan",
      "icon" : "assets/icons/layanan-titip.png",
      "harga" : "Rp. 7.000/Kg",
    },
  ];
  void increment() => count.value++;
}
