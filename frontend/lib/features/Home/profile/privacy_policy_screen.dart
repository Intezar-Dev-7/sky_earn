import 'package:flutter/material.dart';
import 'package:frontend/common/widgets/back_arrow.dart';
import 'package:frontend/utils/constants/colors.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: ShowBackArrow(title: "Privacy Policy", showBackArrow: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Privacy Policy Sections
              _buildPolicyCard("1. Data Collection",
                  "We collect necessary data to provide and improve our services. Your personal information is securely stored."),
              _buildPolicyCard("2. Data Usage",
                  "Your data is used strictly for account management, app functionality, and improving user experience."),
              _buildPolicyCard("3. Third-Party Sharing",
                  "We do not sell or share your personal information with third parties without your consent."),
              _buildPolicyCard("4. Security Measures",
                  "We implement strong security protocols to protect your personal information from unauthorized access."),
              _buildPolicyCard("5. Updates to Policy",
                  "We may update our Privacy Policy from time to time. You will be notified of any significant changes."),

              SizedBox(height: 20),

              // Thank You Message
              Card(
                color: Color.fromRGBO(224, 226, 252, 1).withOpacity(0.1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Center(
                    child: Text(
                      "We value your privacy. Thank you for trusting us!",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Method to build each privacy policy section inside a Card
  Widget _buildPolicyCard(String title, String content) {
    return Card(
      color: Color.fromRGBO(224, 226, 252, 1).withOpacity(0.1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              content,
              style: TextStyle(color: Colors.white70, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
