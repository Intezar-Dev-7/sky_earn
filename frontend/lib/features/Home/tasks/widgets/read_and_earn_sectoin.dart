import 'package:flutter/material.dart';
import 'package:frontend/common/widgets/button.dart';
import 'package:frontend/features/read_and_earn/read_and_earn.dart';
import 'package:frontend/utils/constants/colors.dart';
import 'package:frontend/utils/constants/image_strings.dart';
import 'package:get/get.dart';

class ReadAndEarnSection extends StatelessWidget {
  const ReadAndEarnSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: white10,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                ImagesString.booksImage,
                width: 50,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Read and Earn',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: textWhite,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Earn Upto ',
                        style: TextStyle(
                          fontSize: 14,
                          color: textWhite,
                        ),
                      ),
                      Image.asset(
                        ImagesString.coinIcon,
                        width: 18,
                      ),
                      Text(
                        ' 100',
                        style: TextStyle(
                          fontSize: 14,
                          color: textWhite,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
          CustomButton(text: 'Start', onPressed: () {
            Get.to(const ReadAndEarn());
          }, textSize: 14)
        ],
      ),
    );
  }
}