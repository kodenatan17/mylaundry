import 'package:get/get.dart';

class LayanansatuanController extends GetxController {
  //TODO: Implement LayanansatuanController

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
      "name": "Gaun",
      "icon": "assets/icons/gaun.png",
      "price": "Rp. 40.000",
    },
    {
      "name": "Boneka",
      "icon": "assets/icons/boneka.png",
      "price": "Rp. 20.000",
    },
    {
      "name": "Jaket Sport",
      "icon": "assets/icons/jaket.png",
      "price": "Rp. 10.000",
    },
    {
      "name": "Jaket Parka",
      "icon": "assets/icons/jaket-parka.png",
      "price": "Rp. 20.000",
    },
    {
      "name": "Jas",
      "icon": "assets/icons/jas.png",
      "price": "Rp. 30.000",
    },
    {
      "name": "Jas Hujan",
      "icon": "assets/icons/jas-hujan.png",
      "price": "Rp. 10.000",
    },
    {
      "name": "Celana Jeans",
      "icon": "assets/icons/jeans.png",
      "price": "Rp. 10.000",
    },
    {
      "name": "Kaos Premium",
      "icon": "assets/icons/kaos.png",
      "price": "Rp. 20.000",
    },
    {
      "name": "Karpet",
      "icon": "assets/icons/karpet.png",
      "price": "Rp. 60.000",
    },
    {
      "name": "Kebaya",
      "icon": "assets/icons/kebaya.png",
      "price": "Rp. 50.000",
    },
    {
      "name": "Kemeja",
      "icon": "assets/icons/kemeja.png",
      "price": "Rp. 10.000",
    },
    {
      "name": "Celana Rok",
      "icon": "assets/icons/rok.png",
      "price": "Rp. 5.000",
    },
    {
      "name": "Selimut",
      "icon": "assets/icons/selimut.png",
      "price": "Rp. 10.000",
    },
    {
      "name": "Sepatu Dewasa",
      "icon": "assets/icons/sepatu.png",
      "price": "Rp. 30.000",
    },
    {
      "name": "Sepatu Anak",
      "icon": "assets/icons/sepatu-anak.png",
      "price": "Rp. 20.000",
    },
    {
      "name": "Sepatu Wanita",
      "icon": "assets/icons/sepatu-wanita.png",
      "price": "Rp. 30.000",
    },
    {
      "name": "Seragam Sekolah",
      "icon": "assets/icons/seragam.png",
      "price": "Rp. 10.000",
    },
  ];

  void increment() => count.value++;
}
