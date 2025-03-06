import 'package:flutter/material.dart';
import 'package:frontend/features/Home/tasks/widgets/read_and_earn_sectoin.dart';
import 'package:frontend/features/Home/tasks/widgets/special_offers_widget.dart';
import 'package:frontend/features/Home/tasks/widgets/titles_widget.dart';
import 'package:frontend/features/game_task/game_tasks.dart';
import 'package:frontend/features/quize_task/widgets/quize_tasks.dart';
import 'package:frontend/utils/constants/colors.dart';
import 'package:frontend/utils/constants/image_strings.dart';
import 'package:get/get.dart';

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
          "Tasks",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              BalanceAndRedeemSection(),
              SizedBox(
                height: 10,
              ),
              TaskScreenTitles(
                title: "Special offers",
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  SpecialOffersWidget(
                    image: gamepadImage,
                    title: 'Game Tasks',
                    subtitle: 'Play Games & Earn',
                    onPressed: ()=> Get.to(GameTasks()),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SpecialOffersWidget(
                    image: ideasImage,
                    title: 'Quiz Tasks',
                    subtitle: 'Give Answers & Earn',
                    onPressed: ()=> Get.to(QuizTasks()),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              TaskScreenTitles(
                title: "Read and Earn",
              ),
              SizedBox(
                height: 5,
              ),
              ReadAndEarnSection(),
              SizedBox(
                height: 10,
              ),
              TaskScreenTitles(
                title: "Rate Us",
              ),
              SizedBox(
                height: 5,
              ),
              RateUsSection(),
            ],
          ),
        ),
      ),
    );
  }
}
