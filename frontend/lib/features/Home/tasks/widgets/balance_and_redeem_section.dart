import 'package:flutter/material.dart';
import 'package:frontend/common/widgets/button.dart';
import 'package:frontend/features/Home/tasks/redeem_screen.dart';

import 'package:frontend/utils/constants/colors.dart';
import 'package:frontend/utils/constants/image_strings.dart';
import 'package:get/get.dart';

class BalanceAndRedeemSection extends StatelessWidget {
  const BalanceAndRedeemSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
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
                "Your balance",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: textWhite,
                ),
              ),
              Row(
                children: [
                  Image.asset(
                    coinIcon,
                    width: 20,
                  ),
                  Text(
                    " 2000",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: textWhite,
                    ),
                  ),
                ],
              )
            ],
          ),
          CustomButton(
            text: 'Redeem',
            textSize: 16,
            onPressed: () {
              Get.to(RedeemScreen());
            },
          ),
        ],
      ),
    );
  }
}
