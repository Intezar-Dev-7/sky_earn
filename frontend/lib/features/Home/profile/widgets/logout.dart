import 'package:flutter/material.dart';
import 'package:frontend/utils/constants/colors.dart';
import 'package:frontend/utils/constants/image_strings.dart';

class LogOut extends StatelessWidget {
  const LogOut({
    super.key,
    required this.onTap,
  });
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              logoutIcon,
              height: 30,
              width: 30,
            ),
            Text(
              'Logout',
              style: TextStyle(color: textWhite, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
