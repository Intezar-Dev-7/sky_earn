import 'package:flutter/material.dart';
import 'package:frontend/features/Home/tasks/task_screen.dart';
import 'package:frontend/utils/constants/colors.dart';
import 'package:frontend/utils/constants/image_strings.dart';
import 'package:get/get.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text(
          "Wallet",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromRGBO(224, 226, 252, 1).withOpacity(0.1),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Available coins",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            SizedBox(height: 5),
                            Row(
                              // For icon and text
                              children: [
                                Image.asset(coinIcon, width: 40),
                                SizedBox(width: 7),
                                Text(
                                  "200",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: const Size(349, 40),
                                // maximumSize: Size.fromWidth(double.infinity),
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              onPressed: () {
                                Get.offAll(() => TasksScreen());
                              },
                              child: Text(
                                "Earn More",
                                style: TextStyle(
                                    color: const Color.fromARGB(255, 19, 2, 49),
                                    fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            //
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
