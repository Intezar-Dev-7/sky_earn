import 'package:flutter/material.dart';
import 'package:frontend/utils/constants/colors.dart';

class SpecialOffersWidget extends StatelessWidget {
  const SpecialOffersWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.onPressed,
  });

  final String image;
  final String title;
  final String subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPressed,
        child: Container(
          height: 180,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          decoration: BoxDecoration(
            color: white10,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Column(
            children: [
              Image.asset(
                image,
                width: 80,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                title,
                style: TextStyle(
                  color: textWhite,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(color: textWhite, fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
