import 'package:flutter/material.dart';

import '../../../core/util/constants.dart';
import '../../../core/util/constants_sizes.dart';
class CustomLinkCard extends StatelessWidget {
  final String mainTitleText;
  final String theLinkText;
  final TextStyle mainTitleStyle;
  final TextStyle theLinkTextStyle;
  
   CustomLinkCard({
    required this.mainTitleText,
    required this.theLinkText,
    required this.mainTitleStyle,
    required this.theLinkTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 13,vertical: 10),
       height:kLinkCardHeigh,
    width: double.infinity,
                  
    decoration: BoxDecoration(
        color: kLightDangerColor,
        borderRadius: BorderRadius.circular(kProfileCardRadius)
    ),
    margin: EdgeInsets.only(
      left: 38,
      right: 38
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(mainTitleText,style:mainTitleStyle,),
        Text(theLinkText,style: theLinkTextStyle,)

      ],
    ),
    );
  }
}
