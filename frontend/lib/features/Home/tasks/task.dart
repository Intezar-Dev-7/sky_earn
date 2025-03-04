import 'package:flutter/material.dart';
import 'package:frontend/features/Home/tasks/widgets/read_and_earn_sectoin.dart';
import 'package:frontend/features/Home/tasks/widgets/special_offers_widget.dart';
import 'package:frontend/features/Home/tasks/widgets/titles_widget.dart';
import 'package:frontend/utils/constants/colors.dart';
import 'package:frontend/utils/constants/image_strings.dart';

import 'widgets/balance_and_redeem_section.dart';
import 'widgets/rate_us_section.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text(
          "Tasks Screen",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            BalanceAndRedeemSection(),
            SizedBox(
              height: 20,
            ),
            TaskScreenTitles(
              title: "Special offers",
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SpecialOffersWidget(
                  image: ImagesString.gamepadImage,
                  title: 'Game Tasks',
                  subtitle: 'Play Games & Earn',
                ),
                SizedBox(
                  width: 10,
                ),
                SpecialOffersWidget(
                  image: ImagesString.ideasImage,
                  title: 'Quiz Tasks',
                  subtitle: 'Give Answers & Earn',
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            TaskScreenTitles(
              title: "Read and Earn",
            ),
            SizedBox(
              height: 10,
            ),
            ReadAndEarnSection(),
            SizedBox(
              height: 20,
            ),
            TaskScreenTitles(
              title: "Rate Us",
            ),
            SizedBox(
              height: 10,
            ),
            RateUsSection(),
          ],
        ),
      ),
    );
  }
}




