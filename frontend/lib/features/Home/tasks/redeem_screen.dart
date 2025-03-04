import 'package:flutter/material.dart';
import 'package:frontend/common/widgets/back_arrow.dart';
import 'package:frontend/utils/constants/colors.dart';
import 'package:frontend/utils/constants/image_strings.dart';

class RedeemScreen extends StatefulWidget {
  const RedeemScreen({super.key});

  @override
  State<RedeemScreen> createState() => _RedeemScreenState();
}

class _RedeemScreenState extends State<RedeemScreen> {
  @override
  void dispose() {
    emailController.dispose();
    uidController.dispose();
    super.dispose();
  }

  final TextEditingController emailController = TextEditingController();
  final TextEditingController uidController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: ShowBackArrow(
        title: 'Redeem ',
        showBackArrow: true,
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage(diamondImage),
                    width: 20,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Diamonds",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(height: 25),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                style: TextStyle(color: Colors.white), // Text color
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.1), // Background color
                  hintText: 'Email',
                  hintStyle:
                      const TextStyle(color: Colors.white70), // Hint text color
                  prefixIcon: const Icon(Icons.email,
                      color: Colors.white), // Icon inside textfield
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12), // Rounded corners
                  ),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Email is required';
                  } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$')
                      .hasMatch(value.trim())) {
                    return "Enter a valid email address";
                  } else if (!value.trim().contains("@")) {
                    return "Email is invalid";
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: uidController,
                style: TextStyle(color: Colors.white), // Text color
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.1),
                  hintText: 'Game UID',
                  hintStyle: const TextStyle(color: Colors.white70),
                  prefixIcon:
                      const Icon(Icons.videogame_asset, color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Uid id required';
                  } else if (value.trim().length < 10) {
                    return "UID should be alteast 10 digits";
                  }
                  return null;
                },
              ),
              SizedBox(height: 70),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(170, 60), // Width: 150, Height: 60
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Redeem Now",
                    style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
