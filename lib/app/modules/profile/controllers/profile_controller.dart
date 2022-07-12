import 'package:get/get.dart';

class ProfileController extends GetxController {
  //TODO: Implement ProfileController

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

  final List<Map<String, dynamic>> allMenu = [
    {
      "name": "Data Kasir",
      "icon": "assets/icons/kasir.png",
    },
    {
      "name": "Absen Harian",
      "icon": "assets/icons/absensi.png",
    },
    {
      "name": "Operasional",
      "icon": "assets/icons/operasional.png",
    },
    {
      "name": "Pembatalan",
      "icon": "assets/icons/pembatalan.png",
    },
    {
      "name": "Transaksi",
      "icon": "assets/icons/transaksi.png",
    },
    {
      "name": "Kas Keuangan",
      "icon": "assets/icons/kas-keuangan.png",
    },
    {
      "name": "Paket Member",
      "icon": "assets/icons/member.png",
    },
    {
      "name": "Keluar Akun",
      "icon": "assets/icons/logout.png",
    },
  ];
  void increment() => count.value++;
}
