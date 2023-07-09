import 'package:bootcamp_starter/core/util/constants.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static OutlineInputBorder primaryRoundedOutlineInputBorder =
      OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: kPrimaryColor, width: 2));

  static const textStyle14 = TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: kPrimaryColor);

      //comm: This of Profile
    static const textStyle15 = TextStyle(
      fontSize: 24, fontWeight: FontWeight.w700, color: kPrimaryColor);  

       //comm: This of Profile Card
    static const textStyle16 = TextStyle(
      fontSize: 16, fontWeight: FontWeight.w500, color: kProfielTextColor,
       );  


      //comm: This of 
          static const textStyle17 = TextStyle(
      fontSize: 12, fontWeight: FontWeight.w500, color: kProfielTextColor,
     );  
          static const textStyle18 = TextStyle(
      fontSize: 14, fontWeight: FontWeight.w400, color: kOnLightDangerColor,
      letterSpacing: 4,
     );  
      static const textStyle19 = TextStyle(
      fontSize: 14, fontWeight: FontWeight.w400, color: kLinkTextColor,
     );  
}
