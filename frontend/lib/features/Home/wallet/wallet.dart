import 'package:flutter/material.dart';
import 'package:frontend/features/Home/bottom_navigation_bar/bottom_navigation.dart';
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
  String selectedFilter = "All"; // Default selected tab

  final List<Map<String, dynamic>> transactions = [
    {
      "status": "Success",
      "coins": 800,
      "days": "2 days Ago",
      "color": Colors.green
    },
    {
      "status": "Pending",
      "coins": 800,
      "days": "1 days Ago",
      "color": Colors.orange
    },
    {
      "status": "Failed",
      "coins": 800,
      "days": "7 days Ago",
      "color": Colors.red
    },
  ];
  final controller = Get.put(NavigationController());

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
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              height: 160,
              decoration: BoxDecoration(
                color: white10,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Available coins",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  Row(
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
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize:
                          Size(MediaQuery.of(context).size.width * 0.8, 40),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      controller.selectedIndex.value = 2;
                    },
                    child: Text(
                      "Earn More",
                      style: TextStyle(
                          color: textBlack,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "History",
                      style: TextStyle(
                        color: textWhite,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  // Filter Tabs
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:
                        ["All", "Success", "Pending", "Failed"].map((filter) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedFilter = filter;
                          });
                        },
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 2),
                          margin: EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                            color: selectedFilter == filter
                                ? Colors.white
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: white10, width: 2),
                          ),
                          child: Text(
                            filter,
                            style: TextStyle(
                              color: selectedFilter == filter
                                  ? Colors.black
                                  : Colors.white,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: ListView(
                      children: transactions
                          .where((item) =>
                              selectedFilter == "All" ||
                              item["status"] == selectedFilter)
                          .map((transaction) {
                        return Container(
                          margin: EdgeInsets.only(bottom: 12),
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                          decoration: BoxDecoration(
                            color: white10,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // Status Icon
                              Image.asset(
                                transaction["status"] == "Success"
                                    ? checkIcon
                                    : transaction['status'] == 'Pending'
                                        ? timeIcon
                                        : closeIcon,
                                width: 32,
                              ),
                              SizedBox(width: 22),
                              // Transaction Details
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      transaction["status"],
                                      style: TextStyle(
                                          color: transaction['color'],
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 4),
                                    Row(
                                      children: [
                                        Image.asset(
                                          coinIcon,
                                          width: 16,
                                        ),
                                        SizedBox(width: 4),
                                        Text(
                                          "${transaction["coins"]}",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      transaction["days"],
                                      style: TextStyle(
                                          color: Colors.white60, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),

                              // Coin Reward
                              Row(
                                children: [
                                  Image.asset(
                                    diamondImage,
                                    width: 16,
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    "100",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
