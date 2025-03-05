import 'package:flutter/material.dart';
import 'package:frontend/utils/constants/colors.dart';
import 'package:frontend/utils/constants/image_strings.dart';

class ArticleSection extends StatelessWidget {
  const ArticleSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 7,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 8),
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            color: white10,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.center,
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  color: white.withOpacity(0.9),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                ),
                child: Text(
                  '${index + 1}',
                  style: TextStyle(color: textBlack, fontSize: 44),
                ),
              ),
              SizedBox(width: 10,),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Click on the read button and read \nthe article for 60 seconds.',
                      style:
                      TextStyle(color: textWhite, fontSize: 10),
                    ),
                    Row(
                      children: [
                        Image.asset(
                          coinIcon,
                          width: 18,
                        ),
                        Text(
                          ' +10',
                          style: TextStyle(
                              color: textWhite, fontSize: 16),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 35,
                width: 80,
                alignment: Alignment.center,
                margin:  EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: white.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text('Done', style: TextStyle(color: textBlack, fontSize: 16,fontWeight: FontWeight.w600),),
              ),
            ],
          ),
        );
      },
    );
  }
}
