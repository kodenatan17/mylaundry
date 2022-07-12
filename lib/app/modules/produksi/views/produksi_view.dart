import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mylaundry/app/modules/produksi/data/data_pelanggan.dart';
import 'package:mylaundry/app/widgets/constants.dart';

import '../../../routes/app_pages.dart';
import '../controllers/produksi_controller.dart';

class ProduksiView extends GetView<ProduksiController> {
  final _controllerDataPelanggan = Get.put(DataPelanggan());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produksi'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Color(0xFF009DFF),
                Color(0XFF59BFFF),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Selemat datang John Laundry",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: kDefaultPadding * 2,
                ),
                Text(
                  "Anda perlu menentukan layanan Jenis Laundry sesuai keinginan pelanggan",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: kDefaultPadding * 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => Get.toNamed(Routes.LAYANANKG),
                      child: Container(
                        padding: const EdgeInsets.all(kDefaultPadding),
                        width: Get.width / 2.2,
                        height: Get.width / 3,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(kDefaultCircular),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Color(0xFF059142),
                              Color(0XFF08F26E),
                            ],
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.corporate_fare_rounded,
                              color: Colors.white,
                              size: 20,
                            ),
                            Text(
                              "Layanan",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              height: kDefaultPadding * 3,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "KG AN",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => Get.toNamed(Routes.LAYANANSATUAN),
                      child: Container(
                        padding: const EdgeInsets.all(kDefaultPadding),
                        width: Get.width / 2.2,
                        height: Get.width / 3,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(kDefaultCircular),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Color(0xFF009DFF),
                              Color(0XFF59BFFF),
                            ],
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.corporate_fare_rounded,
                              color: Colors.white,
                              size: 20,
                            ),
                            Text(
                              "Layanan",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              height: kDefaultPadding * 3,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "SATUAN",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(bottom: kDefaultPadding),
              padding: const EdgeInsets.all(kDefaultPadding),
              width: Get.width,
              height: Get.width / 6,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(kDefaultCircular),
                color: Colors.white,
              ),
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => _addModalPelanggan(),
                          ),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Tambahkan Pelanggan",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Nomor Antrian: NA001/07/07/2022",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    VerticalDivider(
                      thickness: 2,
                      color: Colors.grey,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Layanan Waktu",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Jenis Layanan",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.shopping_cart,
                      size: 28,
                      color: kDefaultColor,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _addModalPelanggan extends StatelessWidget {
  final _textAddNamaController = TextEditingController();
  final _textAddHandphoneController = TextEditingController();
  final _controllerSearch = TextEditingController();
  final _controllerDataPelanggan = Get.put(DataPelanggan());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text("Data Konsumen"),
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.black87,
                  ),
                ),
                Flexible(
                  child: TextField(
                    focusNode: FocusNode(),
                    controller: _controllerSearch,
                    decoration: InputDecoration(
                      hintText: 'Cari Pelanggan ... ',
                      suffixIcon: IconButton(
                        onPressed: _controllerSearch.clear,
                        icon: Icon(Icons.clear),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () => Get.offAllNamed(Routes.PRODUKSI),
                  icon: Icon(
                    Icons.verified_rounded,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            Container(
              padding: const EdgeInsets.all(kDefaultPadding),
              width: Get.width,
              height: Get.height / 14,
              color: Colors.grey.withOpacity(0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Daftar Pelanggan",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "16 Item",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _controllerDataPelanggan.allDataPelanggan.length,
                itemBuilder: ((context, index) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.white,
                              primary: kDefaultColor,
                              side: BorderSide(color: kDefaultColor, width: 2),
                            ),
                            child: Text(
                              _controllerDataPelanggan.allDataPelanggan[index]
                                  ['initalPelanggan'],
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  "${_controllerDataPelanggan.allDataPelanggan[index]['handphonePelanggan']},"),
                              Text(
                                "${_controllerDataPelanggan.allDataPelanggan[index]['namePelanggan']}",
                              ),
                            ],
                          ),
                          SizedBox(
                            width: kDefaultPadding * 5,
                          ),
                          OutlinedButton(
                            onPressed: () {
                              showModalBottomSheet<void>(
                                  context: context,
                                  builder: (_) {
                                    return Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: kDefaultPadding,
                                      ),
                                      width: double.infinity,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                      margin: const EdgeInsets.symmetric(
                                        vertical: kDefaultPadding,
                                        horizontal: kDefaultPadding,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          OutlinedButton(
                                            onPressed: () {},
                                            style: OutlinedButton.styleFrom(
                                              backgroundColor: Colors.white,
                                              primary: kDefaultColor,
                                              side: BorderSide(
                                                  color: kDefaultColor,
                                                  width: 2),
                                            ),
                                            child: Text(
                                              _controllerDataPelanggan
                                                      .allDataPelanggan[index]
                                                  ['initalPelanggan'],
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: kDefaultPadding * 1.5,
                                              ),
                                              Text(
                                                "Nama Pelanggan",
                                              ),
                                              Text(
                                                "${_controllerDataPelanggan.allDataPelanggan[index]['namePelanggan']}",
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          ElevatedButton(
                                            onPressed: () {
                                              Navigator.of(context).pop(
                                                _controllerSearch.text =
                                                    '${_controllerDataPelanggan.allDataPelanggan[index]['namePelanggan']}',
                                              );
                                            },
                                            child: const Text('Pilih'),
                                          ),
                                        ],
                                      ),
                                    );
                                  });
                            },
                            style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.white,
                              primary: kDefaultColor,
                              side: BorderSide(color: kDefaultColor, width: 2),
                            ),
                            child: Text(
                              "Tambahkan",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        height: 2,
                        color: Colors.black54,
                      ),
                    ],
                  );
                }),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _displayAddPelanggan(context);
        },
        backgroundColor: kDefaultColor,
        child: const Icon(Icons.person_add),
      ),
    );
  }

  Future<void> _displayAddPelanggan(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 2,
            title: Text('Tambah Data Pelanggan'),
            content: Container(
              height: Get.height / 3,
              child: Column(
                children: [
                  TextField(
                    controller: _textAddNamaController,
                    decoration: InputDecoration(hintText: "Nama Pelanggan"),
                    keyboardType: TextInputType.name,
                  ),
                  TextField(
                    controller: _textAddHandphoneController,
                    decoration:
                        InputDecoration(hintText: "Handphone Pelanggan"),
                    keyboardType: TextInputType.phone,
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              IconButton(
                color: Colors.green,
                icon: Icon(Icons.check),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }
}
