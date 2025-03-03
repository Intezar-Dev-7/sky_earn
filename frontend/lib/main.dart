import 'package:flutter/material.dart';
import 'package:frontend/features/Home/bottom_navigation_bar/bottom_navigation.dart';
import 'package:frontend/features/Home/onBoarding/splashscreen.dart';
import 'package:get/get.dart';

void main() {
  Get.put(NavigationController()); // Ensuring it's globally available

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
