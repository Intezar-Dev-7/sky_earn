import 'package:flutter/material.dart';
import 'package:frontend/utils/constants/colors.dart';

class TaskScreenTitles extends StatelessWidget {
  const TaskScreenTitles({
    super.key, required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "|",
          style: TextStyle(
              color: textWhite,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 5,),
        Text(
          title,
          style: TextStyle(
              color: textWhite,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
