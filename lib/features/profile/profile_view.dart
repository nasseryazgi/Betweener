import 'package:bootcamp_starter/core/util/constants_sizes.dart';
import 'package:bootcamp_starter/features/profile/widgets/custom_profile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../core/util/constants.dart';
import '../../core/util/styles.dart';
import '../../core/util/constants_sizes.dart';
import '../../core/util/assets.dart';


class ProfileView extends StatefulWidget {
  static String id = '/profileView';

  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {

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
                  SizedBox(height: 12,),
                 Text('Profile',style: Styles.textStyle15,),
              //comm:frit item: Profile Card
                  SizedBox(height: 36,),
                  Container(
                    padding: EdgeInsets.only(
                    //  top: 12,
                      right: 15,
                      left: 24,
                     // bottom: 21

                    ),
                    height:kProfileCardHeigh,
                    width: double.infinity,
                    margin: EdgeInsets.only(
                      left: 38,
                      right: 38
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kProfileCardRadius),
                      color: kPrimaryColor
                    ),
                  child: CustomProfileCard(
                        email: 'example@gmail.com',
                        name: 'John Doe',
                      phone: '+970000000000',
                      myImageIcon: AssetsData.editIcon,  
                      
                  ),

                  
                  

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

