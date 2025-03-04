
import 'package:flutter/material.dart';
import '../../../../utils/constants/colors.dart';

class Option extends StatelessWidget {
  const Option({
    super.key, required this.icon, required this.title,
  });
  final String icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 14),
      padding: EdgeInsets.symmetric(horizontal: 14,vertical: 14),
      decoration: BoxDecoration(
        color: white10,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                icon,
                height: 30,
                width: 40,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                title,
                style: TextStyle(color: textWhite, fontSize: 16),
              ),
            ],
          ),
          Icon(Icons.arrow_forward_ios, color: textWhite)
        ],
      ),
    );
  }
}
