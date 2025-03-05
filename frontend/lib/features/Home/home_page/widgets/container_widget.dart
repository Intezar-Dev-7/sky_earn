// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:frontend/utils/constants/colors.dart';

import 'package:frontend/utils/constants/image_strings.dart';

class ContainerWidget extends StatelessWidget {
  final String diamondsNumber;
  final String coinsNumber;

  const ContainerWidget(
      {super.key, required this.diamondsNumber, required this.coinsNumber});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          // color: white10,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: white.withOpacity(0.2),width: 2,style: BorderStyle.solid),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: double.infinity,
              height: 35,
              decoration: BoxDecoration(
                color: white.withOpacity(0.2),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage(diamondImage),
                    width: 20,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Diamonds",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ],
              ),
            ),
            Container(
              width: 60,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: white10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage(diamondImage), width: 14),
                  SizedBox(width: 2),
                  Text(
                    diamondsNumber,
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage(coinIcon),
                  width: 18,
                ),
                SizedBox(width: 5),
                Text(
                  coinsNumber,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
