import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mylaundry/app/widgets/constants.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends StatelessWidget {
  final controller = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDefaultColor,
        title: Text('My Laundry'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(kDefaultPadding),
        margin: const EdgeInsets.all(kDefaultPadding / 2),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: Get.height / 5,
                  width: 100,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(kDefaultPadding),
                      bottomLeft: Radius.circular(kDefaultPadding),
                    ),
                    image: DecorationImage(
                      image: AssetImage("assets/images/logo-transparent.png"),
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.rectangle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(kDefaultPadding),
                  height: Get.height / 5,
                  width: Get.width / 1.5,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(kDefaultPadding),
                      bottomRight: Radius.circular(kDefaultPadding),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: kDefaultPadding / 2,
                      horizontal: kDefaultPadding / 2,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "John Laundry",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: kDefaultPadding / 2,
                        ),
                        Text(
                          "Kp Lokomotif RT.005 RW.005 No. 40 Kaliabang Tengah, Bekasi Utara, Kota Bekasi",
                        ),
                        SizedBox(
                          height: kDefaultPadding / 2,
                        ),
                        Text(
                          "+6282114155395",
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                statusCard(
                  title: "Omset Hari Ini",
                  data: "RP. 300.000",
                ),
                statusCard(
                  title: "Piutang Hari Ini",
                  data: "RP. 80.000",
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.refresh),
                  color: kDefaultColor,
                ),
              ],
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 0.2,
                  crossAxisSpacing: 0.2,
                ),
                itemCount: controller.allMenu.length,
                itemBuilder: ((context, index) {
                  return Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              width: 1.0,
                              color: Colors.grey.shade300,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 1), // changes position of shadow
                              ),
                            ],
                            borderRadius:
                                BorderRadius.circular(kDefaultCircular),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              '${controller.allMenu[index]['icon']}',
                              color: kDefaultColor,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: kDefaultPadding / 2,
                        ),
                        Text(
                          controller.allMenu[index]['name'],
                        )
                      ],
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class statusCard extends StatelessWidget {
  const statusCard({
    Key? key,
    required this.title,
    required this.data,
  }) : super(key: key);

  final String title;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(kDefaultPadding / 2),
        width: Get.width * 0.35,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.black87,
                  fontWeight: FontWeight.normal),
            ),
            RichText(
              text: TextSpan(
                text: data,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: kDefaultColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
