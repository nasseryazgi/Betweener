import 'package:flutter/material.dart';

import '../../../core/util/assets.dart';
import '../../../core/util/styles.dart';

class CustomProfileCard extends StatelessWidget {
 final String name;
 final String email;
 final String phone;
 final String myImageIcon;
   CustomProfileCard({
    required this.name,
    required this.email,
   required this.phone,
    required this.myImageIcon,
    //required this.phone,
    
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children:[ Row(
          children: [
      
            //comm:firs item : Image
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
             
              child: Image(image: AssetImage(AssetsData.profileImage),
              
                                  
              ),
            ),
          ),
                      
      
            //comm:second item: column
            Container(
              margin: EdgeInsets.only(left: 18),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(this.name,style: Styles.textStyle16,),
                  Text(this.email,style: Styles.textStyle17,),
                  Text(this.phone,style: Styles.textStyle17),
                  
            
                ],
              ),
            ),
      
      /*
            //comm:third item: Edit Icon
            Container(
              margin: EdgeInsets.only(top: 24),
              child: ImageIcon(
                AssetImage(AssetsData.editIcon),
              ),
            )
      */
      
          ],
      
        ),
      Positioned(
        top: 14,
        right: 15,
        child: Container(
          //color: Colors.white,
          
          child: ImageIcon(
          
          AssetImage(this.myImageIcon),color:Colors.white),
           
        ),
      )
        ],
      ),
    );
  }
}
