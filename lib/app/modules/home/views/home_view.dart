import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mylaundry/app/modules/dashboard/views/dashboard_view.dart';
import 'package:mylaundry/app/modules/produksi/views/produksi_view.dart';
import 'package:mylaundry/app/modules/profile/views/profile_view.dart';

import '../../../widgets/constants.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: controller.tabIndex,
            children: [
              ProduksiView(),
              DashboardView(),
              ProfileView(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: kDarkColor,
          selectedItemColor: kDefaultColor,
          onTap: controller.changeTabIndex,
          currentIndex: controller.tabIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: [
            _bottomNavigationBarItem(
              icon: Icons.corporate_fare_rounded,
              label: 'Produksi',
            ),
            _bottomNavigationBarItem(
              icon: Icons.dry_cleaning_rounded,
              label: 'Dashboard',
            ),
            _bottomNavigationBarItem(
              icon: Icons.person_pin_rounded,
              label: 'Profile',
            ),
          ],
        ),
      );
    });
  }

  _bottomNavigationBarItem({required IconData icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
