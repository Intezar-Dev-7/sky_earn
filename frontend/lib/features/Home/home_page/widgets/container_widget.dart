// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

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
      child: Expanded(
        child: Container(
          padding: EdgeInsets.all(10),
          // height: 140,
          // width: 175,
          decoration: BoxDecoration(
            color: Color.fromRGBO(224, 226, 252, 1).withOpacity(0.1),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage(ImagesString.diamondImage),
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
              Container(
                width: 60,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color.fromRGBO(224, 226, 252, 1).withOpacity(0.1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage(ImagesString.diamondImage), width: 10),
                    SizedBox(width: 3),
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
                    image: AssetImage(ImagesString.diamondImage),
                    width: 10,
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
      ),
    );
  }
}
