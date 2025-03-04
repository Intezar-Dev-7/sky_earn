import 'package:flutter/material.dart';
import 'package:frontend/utils/constants/colors.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({
    super.key, required this.userName, required this.emailId,
  });
  final String userName;
  final String emailId;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      decoration: BoxDecoration(
        color: white10,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(userName,style: TextStyle(fontSize: 22,color: textWhite,fontWeight: FontWeight.bold,),),
          Text(emailId,style: TextStyle(fontSize: 18,color: textWhite,),)
        ],
      ),
    );
  }
}
