import 'package:flutter/material.dart';
import 'package:frontend/common/widgets/back_arrow.dart';
import 'package:frontend/utils/constants/colors.dart';

import 'package:iconsax_flutter/iconsax_flutter.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: ShowBackArrow(title: "Contact Us", showBackArrow: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Contact Information
            Card(
              color: Color.fromRGBO(224, 226, 252, 1).withOpacity(0.1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    _buildContactRow(Iconsax.call, "Phone", "+1 234 567 890"),
                    Divider(color: Colors.white30),
                    _buildContactRow(
                        Iconsax.sms, "Email", "support@example.com"),
                    Divider(color: Colors.white30),
                    _buildContactRow(
                        Iconsax.location, "Location", "New York, USA"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),

            // Social Media Links
            Text(
              "Follow Us",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Row(
              children: [
                _buildSocialIcon(Iconsax.whatsapp),
                SizedBox(width: 15),
                _buildSocialIcon(Iconsax.facebook),
                SizedBox(width: 15),
                _buildSocialIcon(Iconsax.youtube),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactRow(IconData icon, String title, String value) {
    return Row(
      children: [
        Icon(icon, color: Colors.white, size: 22),
        SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(color: Colors.white70, fontSize: 14)),
            Text(value,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ],
    );
  }

  Widget _buildSocialIcon(IconData icon) {
    return CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: 22,
      child: Icon(icon, color: Colors.white, size: 35),
    );
  }
}
