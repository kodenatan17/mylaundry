import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mylaundry/app/modules/dashboard/components/antrian_view.dart';
import 'package:mylaundry/app/modules/dashboard/components/diproses_view.dart';
import 'package:mylaundry/app/modules/dashboard/components/selesai_view.dart';

import '../../../widgets/constants.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  final _controllerSearch = TextEditingController();

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.wallet_membership_rounded,
                  color: kDefaultColor,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_active_rounded,
                  color: kDefaultColor,
                ),
              ),
            ],
            backgroundColor: Colors.white,
            foregroundColor: Colors.black87,
            title: Container(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/logo-transparent.png",
                    width: 140,
                    height: 70,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Hi, Andi Loshi'),
                ],
              ),
            ),
            bottom: TabBar(
              labelColor: Colors.black87,
              indicatorColor: kDefaultColor,
              indicatorWeight: 5,
              tabs: [
                Tab(
                  text: '(18) ' + 'Antrian',
                ),
                Tab(
                  text: '(6) ' + 'Diproses',
                ),
                Tab(
                  text: '(20) ' + 'Selesai',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              AntrianView(),
              DiprosesView(),
              SelesaiView(),
            ],
          ),
        ),
      );
}
