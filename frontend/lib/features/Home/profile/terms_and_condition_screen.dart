import 'package:flutter/material.dart';
import 'package:frontend/common/widgets/back_arrow.dart';
import 'package:frontend/utils/constants/colors.dart';

class TermsAndConditionScreen extends StatelessWidget {
  const TermsAndConditionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: ShowBackArrow(title: "Terms & Conditions", showBackArrow: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Title Card

              // Terms List
              _buildTermsCard("1. User Agreement",
                  "By accessing and using this app, you agree to comply with all terms and conditions."),
              _buildTermsCard("2. Privacy Policy",
                  "We value your privacy. Your personal data is protected and will not be shared without consent."),
              _buildTermsCard("3. Account Security",
                  "Users are responsible for maintaining the confidentiality of their account details."),
              _buildTermsCard("4. Prohibited Activities",
                  "You agree not to engage in any activity that may harm the app, its users, or violate any laws."),
              _buildTermsCard("5. Changes to Terms",
                  "We reserve the right to update these terms at any time. Continued use of the app implies acceptance."),

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
                      "Thank you for using our app!",
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

  // Method to build each terms section inside a Card
  Widget _buildTermsCard(String title, String content) {
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
