import 'package:flutter/material.dart';
import 'package:frontend/common/widgets/back_button.dart';
import 'package:frontend/common/widgets/custom_app_bar.dart';
import 'package:frontend/features/read_and_earn/widgets/article_section.dart';
import 'package:frontend/common/widgets/heading_section.dart';
import 'package:frontend/utils/constants/colors.dart';
import 'package:frontend/utils/constants/image_strings.dart';

class ReadAndEarn extends StatelessWidget {
  const ReadAndEarn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        leading: backButton(),
        backgroundColor: backgroundColor,
        title: CustomAppBar(title: 'Read And Earn', coins: 2000),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
<<<<<<< HEAD
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Read Articles',
              style: TextStyle(
                  color: textWhite, fontWeight: FontWeight.bold, fontSize: 22),
            ),
            Text(
              'You can read up to 7 articles per day',
              style: TextStyle(color: textWhite),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 7,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: white10,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: white.withOpacity(0.7),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)),
                          ),
                          child: Text(
                            '${index + 1}',
                            style: TextStyle(color: textBlack, fontSize: 44),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Click on the read button and read \nthe article for 60 seconds.',
                                style:
                                    TextStyle(color: textWhite, fontSize: 10),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    coinIcon,
                                    width: 18,
                                  ),
                                  Text(
                                    ' +10',
                                    style: TextStyle(
                                        color: textWhite, fontSize: 16),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 35,
                          width: 80,
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            color: white.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            'Done',
                            style: TextStyle(
                                color: textBlack,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
=======
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeadingSection(title: 'Read Articles',subtitle: 'You can read up to 7 articles per day',),
              ArticleSection()
            ],
          ),
>>>>>>> e2c1215f890c02c823789ab733a15fbc5f6fa70a
        ),
      ),
    );
  }
}
