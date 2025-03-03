import 'package:flutter/material.dart';
import 'package:frontend/features/authentication/login/login.dart';

class DialogBox {
  static void showTermsDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false, // Prevent closing by tapping outside
      builder: (ctx) => AlertDialog(
        backgroundColor: Color.fromRGBO(224, 226, 252, 1).withOpacity(0.1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        title: const Text("Alert",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        content: const Text(
          "To proceed with the app, you must review and accept our terms and conditions..",
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Quit", style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            child: const Text("Accept", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
