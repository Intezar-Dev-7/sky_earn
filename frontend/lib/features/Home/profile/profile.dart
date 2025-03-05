import 'package:flutter/material.dart';
import 'package:frontend/features/Home/profile/screens/contactus_screen.dart';
import 'package:frontend/features/Home/profile/screens/terms_and_condition_screen.dart';
import 'package:frontend/features/Home/profile/widgets/logout.dart';
import 'package:frontend/features/Home/profile/widgets/options.dart';
import 'package:frontend/features/Home/profile/widgets/user_details.dart';
import 'package:frontend/utils/constants/colors.dart';
import 'package:frontend/utils/constants/image_strings.dart';

import '../../../common/widgets/custom_app_bar.dart';
import 'screens/privacy_policy_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: CustomAppBar(title: "Profile", coins: 2000),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(marketingImage),
              ),
              SizedBox(
                height: 10,
              ),
              UserDetails(userName: 'Aman Patidar', emailId: 'amanboy@gmail.com'),
              Option(
                icon: contactUsIcon,
                title: 'Contact Us',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ContactUs()));
                },
              ),
              Option(
                icon: analyzeIcon,
                title: 'Terms and Conditions',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TermsAndConditionScreen()));
                },
              ),
              Option(
                icon: privacyPolicyIcon,
                title: 'Privacy Policy',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PrivacyPolicyScreen()));
                },
              ),
              LogOut(onTap: () {
                // TODO implement logout feature
              }),
            ],
          ),
        ),
      ),
    );
  }
}
