import 'package:bootcamp_starter/core/util/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/util/constants.dart';
import '../../../core/util/styles.dart';
class AddOneCard extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
     width: 116,
     height: 79,
     
     decoration: BoxDecoration(
      color: kLightPrimaryColor,
      borderRadius: BorderRadius.circular(12),
     ),
      child: Column(
        children: [
          Icon(Icons.add,size: 25),
          SizedBox(height: 3,),
          Text('Add One',style:Styles.textStyle25),
          
        ],
      ),


    );
  }
}