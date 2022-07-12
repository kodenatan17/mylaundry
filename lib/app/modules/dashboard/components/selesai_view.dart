import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mylaundry/app/modules/dashboard/data/selesai_data.dart';

import '../../../widgets/constants.dart';

class SelesaiView extends StatelessWidget {
  Widget build(BuildContext context) {
    final _controllerList = Get.put(SelesaiData());
    return ListView.builder(
        itemCount: _controllerList.allSelesaiData.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ModalPage(
                      pelanggan: _controllerList.allSelesaiData[index]
                          ["namaPelanggan"],
                      jenisLayanan: _controllerList.allSelesaiData[index]
                          ["jenisLayanan"],
                      waktuLayanan: _controllerList.allSelesaiData[index]
                          ["waktuLayanan"],
                      deadlineLayanan: _controllerList.allSelesaiData[index]
                          ["deadlineLayanan"],
                      notaLayanan: _controllerList.allSelesaiData[index]
                          ["notaLayanan"],
                      catatanLayanan: _controllerList.allSelesaiData[index]
                          ["catatanLayanan"],
                      hpPelanggan: _controllerList.allSelesaiData[index]
                          ["hpPelanggan"],
                    ),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(kDefaultPadding),
                width: Get.width,
                height: Get.height / 7,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 1,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(kDefaultCircular),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${_controllerList.allSelesaiData[index]["namaPelanggan"]}" +
                              " ${_controllerList.allSelesaiData[index]["hpPelanggan"]}",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          "${_controllerList.allSelesaiData[index]["jenisLayanan"]}",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "${_controllerList.allSelesaiData[index]["waktuLayanan"]}",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "${_controllerList.allSelesaiData[index]["deadlineLayanan"]}",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          "${_controllerList.allSelesaiData[index]["notaLayanan"]}",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          "Sudah Selesai",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: kDefaultColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}

class ModalPage extends StatelessWidget {
  const ModalPage({
    Key? key,
    required this.pelanggan,
    required this.jenisLayanan,
    required this.waktuLayanan,
    required this.deadlineLayanan,
    required this.notaLayanan,
    required this.catatanLayanan,
    required this.hpPelanggan,
  }) : super(key: key);

  final String pelanggan;
  final String jenisLayanan;
  final String waktuLayanan;
  final String deadlineLayanan;
  final String notaLayanan;
  final String catatanLayanan;
  final String hpPelanggan;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text("Detail Nota Produksi"),
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding,
          vertical: kDefaultPadding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
              width: Get.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Nota Pesanan",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        notaLayanan,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        deadlineLayanan,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/icons/nota-process.png",
                      color: Colors.redAccent,
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            Container(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
              width: Get.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        pelanggan,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        hpPelanggan,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/icons/whatsapp.png",
                      color: Colors.greenAccent,
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            Container(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
              width: Get.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        waktuLayanan,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: kDefaultPadding * 1.5,
                      ),
                      Text(
                        jenisLayanan,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        deadlineLayanan,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          "assets/icons/report.png",
                          color: kDefaultColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
              width: Get.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.event_note_rounded,
                            color: kDefaultColor,
                          ),
                          SizedBox(
                            width: kDefaultPadding,
                          ),
                          Text(
                            "Catatan",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        catatanLayanan,
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Saat ini Laundry masih diantrian",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    "Anda dapat melihat catatan untuk kemudahan",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/laundry.png",
                      width: 100,
                      fit: BoxFit.cover,
                      color: kDefaultColor,
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Image.asset(
                      "assets/icons/complete.png",
                      width: 100,
                      fit: BoxFit.cover,
                      color: kDefaultColor,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.add),
                      label: Text("Laundry Process"),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.add),
                      label: Text("Laundry di Packing"),
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: MaterialButton(
                  minWidth: Get.width,
                  onPressed: () {},
                  color: kDefaultColor,
                  child: Text(
                    "PRINT NOTA PRODUKSI",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
