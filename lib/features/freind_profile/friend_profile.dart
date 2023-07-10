import 'package:bootcamp_starter/core/util/assets.dart';
import 'package:bootcamp_starter/core/util/styles.dart';
import 'package:bootcamp_starter/features/profile/widgets/custom_link_card.dart';
import 'package:flutter/material.dart';

import 'widgets/profiel card.dart';



class Friendprofile extends StatefulWidget {
  static String id = '/friendprofile';

  const Friendprofile({super.key});

  @override
  State<Friendprofile> createState() => _FriendprofileState();
}

class _FriendprofileState extends State<Friendprofile> {

  double containerWidth = 0.0;
  bool showIcons = false;


  @override
  Widget build(BuildContext context) {
    return  SafeArea(

      child: Scaffold(
        body: Container(
          width: double.infinity,
          child: Column(

            //  crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //comm:frit item: Profile word

              Row(
                children: [

                 Padding(
                   padding: const EdgeInsets.only(top: 34 , ),
                   child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new , color: Color(0xFF2D2B4E
                   ) ,size: 48,)),
                 ),

                  Padding(
                    padding: const EdgeInsets.only(  left: 124,top: 47 ),
                    child: Text('Ahmed Ali',style: Styles.textStyle15, ),
                  ),
                ],
              ),
              //comm:frit item: Profile Card
              SizedBox(height: 36,),

              FriendProfileCard( email: 'example@gmail.com',
                name: 'John Doe',
                ),





              //comm:SecondItem:link card
              //
              SizedBox(height: 30,),

              CustomLinkCard(
                mainTitleStyle:Styles.textStyle18,
                mainTitleText: 'INSTAGRAM',
                theLinkText: 'https://www.instagram.com/a7medhq/',
                theLinkTextStyle: Styles.textStyle19,

              ),

              SizedBox(height: 24,),






            ],
          ),
        ),
      ),
    );
  }
}
