import 'package:flutter/material.dart';

import '../../../core/util/constants.dart';
import '../../../core/util/styles.dart';
class CustomCardDetail extends StatelessWidget {
  final String title;
  final String subTitle;
  const CustomCardDetail({
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
     width: 116,
     height: 79,
     
     decoration: BoxDecoration(
      color: kLightSecondaryColor,
      borderRadius: BorderRadius.circular(12),
     ),
      child: Column(
        children: [
          Text(this.title,style: Styles.textStyle23),
          SizedBox(height: 3,),
          Text(this.subTitle,style:Styles.textStyle24),
          
        ],
      ),


    );
  }
}