import 'package:flutter/material.dart';
import 'package:frontend/utils/constants/colors.dart';

class TermsAndPolicy extends StatelessWidget {
  const TermsAndPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text(
          "Sky Earn",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "To enable our services , kindly accept our terms and\ncondition policy.We reserve the right to modify these terms at any time ",
              style: TextStyle(color: Colors.white, fontSize: 14),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
      body: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
