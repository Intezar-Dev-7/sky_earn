import 'package:flutter/material.dart';
import 'package:frontend/common/widgets/button.dart';
import 'package:frontend/features/Home/tasks/widgets/read_and_earn_widget.dart';
import 'package:frontend/features/Home/tasks/widgets/titles_widget.dart';
import 'package:frontend/utils/constants/colors.dart';
import 'package:frontend/utils/constants/image_strings.dart';

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
            Container(
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
                            ImagesString.coinIcon,
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
                    onPressed: () {},
                  ),
                ],
              ),
            ),
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
                ReadAndEarnWidget(
                  image: ImagesString.gamepadImage,
                  title: 'Game Tasks',
                  subtitle: 'Play Games & Earn',
                ),
                SizedBox(
                  width: 10,
                ),
                ReadAndEarnWidget(
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
            Container(
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
                  CustomButton(text: 'Start', onPressed: () {}, textSize: 14)
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TaskScreenTitles(
              title: "Rate Us",
            ),
            SizedBox(
              height: 10,
            ),
            Container(
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
            ),
          ],
        ),
      ),
    );
  }
}
