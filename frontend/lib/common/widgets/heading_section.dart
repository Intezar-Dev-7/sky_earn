
import 'package:flutter/material.dart';
import 'package:frontend/utils/constants/colors.dart';

class HeadingSection extends StatelessWidget {
  const HeadingSection({
    super.key, required this.title, required this.subtitle,
  });
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              color: textWhite, fontWeight: FontWeight.bold, fontSize: 22),
        ),
        Text(
          subtitle,
          style: TextStyle(color: textWhite),
        ),
      ],
    );
  }
}

