import 'package:flutter/material.dart';
import 'package:get/get.dart';

class backButton extends StatelessWidget {
  const backButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Get.back();
      },
      icon: Icon(
        color: Colors.white,
        Icons.arrow_back_rounded,
      ),
    );
  }
}
