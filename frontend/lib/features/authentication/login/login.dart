import 'package:flutter/material.dart';
import 'package:frontend/utils/constants/colors.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("SignIn To Get Started",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
            Text("Complete Easy tasks and earn Diamonds",
                style: TextStyle(color: Colors.white, fontSize: 18),
                textAlign: TextAlign.center),
            SizedBox(height: 70),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                minimumSize:
                    const Size(220, 60), // Increased width for better layout
                backgroundColor:
                    Color.fromRGBO(224, 226, 252, 1).withOpacity(0.1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () {
                // TODO: implement google sign  in feature
              },
              icon: Icon(
                Iconsax.google_1,
                size: 25,
              ),
              label: Text(
                "Continue with Google",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
