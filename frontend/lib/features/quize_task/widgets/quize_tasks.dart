import 'package:flutter/material.dart';
import 'package:frontend/utils/constants/colors.dart';

import '../../../common/widgets/back_button.dart';
import '../../../common/widgets/custom_app_bar.dart';
import '../../../common/widgets/heading_section.dart';
import '../../../utils/constants/image_strings.dart';

class QuizTasks extends StatelessWidget {
  const QuizTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        leading: backButton(),
        backgroundColor: backgroundColor,
        title: CustomAppBar(title: 'Quiz Tasks', coins: 2000),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeadingSection(
                  title: 'Play Quiz',
                  subtitle: 'You can play up to 6 minutes daily'),
              SizedBox(
                height: 10,
              ),
              GridView.builder(
                itemCount: 6,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12),
                itemBuilder: (context, index) {
                  return Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: white10,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Image.asset(
                          ideasImage,
                          width: 100,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset(coinIcon,width: 14,),
                            Text(
                              ' +10',
                              style: TextStyle(
                                color: textWhite,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 30,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: white.withOpacity(0.7),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                          ),
                          child: Text(
                            'Done',
                            style: TextStyle(
                                color: textBlack,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
