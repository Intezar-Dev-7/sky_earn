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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeadingSection(title: 'Read Articles',subtitle: 'You can read up to 7 articles per day',),
              ArticleSection()
            ],
          ),
        ),
      ),
    );
  }
}
