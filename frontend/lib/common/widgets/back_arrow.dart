import 'package:flutter/material.dart';
import 'package:frontend/utils/constants/colors.dart';
import 'package:get/get.dart';

import 'package:iconsax_flutter/iconsax_flutter.dart';

class ShowBackArrow extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackArrow;

  const ShowBackArrow(
      {super.key, required this.title, required this.showBackArrow});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor, // Adjust background color if needed
      automaticallyImplyLeading: false,
      leading: showBackArrow
          ? IconButton(
              onPressed: () => Get.back(),
              icon: Icon(
                Iconsax.arrow_left,
                color: Colors.white,
              ))
          : null,
      title: Text(
        title,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
