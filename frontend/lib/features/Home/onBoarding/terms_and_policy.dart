import 'package:flutter/material.dart';
import 'package:frontend/common/widgets/dialogbox.dart';
import 'package:frontend/features/authentication/login/login.dart';
import 'package:frontend/utils/constants/colors.dart';

class TermsAndPolicy extends StatelessWidget {
  const TermsAndPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: const Text(
          "Sky Earn",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "To enable our services, kindly accept our terms and\ncondition policy. We reserve the right to modify these terms at any time.",
              style: TextStyle(color: Colors.white, fontSize: 14),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Terms & Policy Container
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color:
                    const Color.fromRGBO(255, 222, 217, 255).withOpacity(0.1),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize:
                      MainAxisSize.min, // Prevent unnecessary expansion
                  children: const [
                    Text(
                      "1. Personal Information:",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "We collect personal details such as name & email to enhance your experience.",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "2. Device Information:",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "We gather device-related details like IP address and system specifications for security purposes.",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),

            const Spacer(), // Push buttons to the bottom

            // Buttons Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(150, 60), // Width: 150, Height: 60
                    backgroundColor:
                        Color.fromRGBO(224, 226, 252, 1).withOpacity(0.1),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {
                    DialogBox.showTermsDialog(context);
                  },
                  child: const Text("Decline",
                      style: TextStyle(color: Colors.white)),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(150, 60), // Width: 150, Height: 60
                    backgroundColor:
                        Color.fromRGBO(224, 226, 252, 1).withOpacity(0.1),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: const Text("Accept",
                      style: TextStyle(color: Colors.white)),
                ),
              ],
            ),

            const SizedBox(height: 15),

            // Terms Agreement Text
            const Text(
              "By accepting our terms, you agree to our policies.",
              style: TextStyle(color: Colors.white, fontSize: 13),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 40), // Add spacing at bottom
          ],
        ),
      ),
    );
  }
}
