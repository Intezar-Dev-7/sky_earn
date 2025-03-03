import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:frontend/features/Home/home_page/home.screen.dart';
import 'package:frontend/features/Home/profile/profile.dart';
import 'package:frontend/features/Home/tasks/task.dart';
import 'package:frontend/features/Home/wallet/wallet.dart';
import 'package:frontend/utils/constants/colors.dart';

import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final controller = Get.put(NavigationController());
  // final NavigationController controller =
  //     Get.find<NavigationController>(); // Ensure the controller exists globally
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: backgroundColor,
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          color: Colors.white
              .withOpacity(0.2), // Semi-transparent for a glass effect
          buttonBackgroundColor: backgroundColor, // Selected item background
          height: 60,

          index: controller.selectedIndex.value,
          animationDuration:
              const Duration(milliseconds: 200), // Smooth transition
          items: const [
            Icon(Iconsax.home, size: 30, color: Colors.white),
            Icon(Iconsax.wallet, size: 30, color: Colors.white),
            Icon(Iconsax.task, size: 30, color: Colors.white),
            Icon(Iconsax.user, size: 30, color: Colors.white),
          ],

          onTap: (index) {
            controller.selectedIndex.value = index;
          },
        ),
        body: controller.screens[controller.selectedIndex.value],
      ),
    );
  }
}

class NavigationController extends GetxController {
  var selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const WalletScreen(),
    const TasksScreen(),
    const ProfileScreen(),
  ];
}
