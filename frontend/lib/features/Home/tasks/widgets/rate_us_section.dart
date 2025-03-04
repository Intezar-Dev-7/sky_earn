import 'package:flutter/material.dart';
import 'package:frontend/common/widgets/button.dart';
import 'package:frontend/utils/constants/colors.dart';
import 'package:frontend/utils/constants/image_strings.dart';

class RateUsSection extends StatelessWidget {
  const RateUsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: white10,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Rate Us!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: textWhite,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Please take a moment to rate us',
                style: TextStyle(color: textWhite, fontSize: 12),
              ),
              SizedBox(
                height: 5,
              ),
              CustomButton(
                  text: 'Rate us', onPressed: () {}, textSize: 12)
            ],
          ),
          Image.asset(
            ImagesString.marketingImage,
            width: 100,
          ),
        ],
      ),
    );
  }
}
