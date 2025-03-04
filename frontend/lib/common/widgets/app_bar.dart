
import 'package:flutter/material.dart';
import 'package:frontend/utils/constants/colors.dart';

import '../../utils/constants/image_strings.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key, required this.title, required this.coins,
  });

  final String title;
  final int coins;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: white10,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Image.asset(
                ImagesString.coinIcon,
                width: 14,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                coins.toString(),
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: textWhite),
              ),
            ],
          ),
        )
      ],
    );
  }
}
