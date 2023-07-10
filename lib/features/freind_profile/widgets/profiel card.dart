import 'package:flutter/material.dart';

import '../../../core/util/assets.dart';
import '../../../core/util/constants.dart';
import '../../../core/util/constants_sizes.dart';
import '../../../core/util/styles.dart';

class FriendProfileCard  extends StatelessWidget {
  final String name;
  final String email;

  FriendProfileCard({
    required this.name,
    required this.email,

    //required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(
          //  top: 12,
          right: 15,
          left: 24,
          // bottom: 21
        ),
        height: kProfileCardHeigh,
        width: double.infinity,
        margin: EdgeInsets.only(left: 38, right: 38),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kProfileCardRadius),
            color: kPrimaryColor),
        child: Container(
          child: Stack(
            children: [
              Row(
                children: [
                  //comm:firs item : Image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                      child: Image(
                        image: AssetImage(AssetsData.profileImage),
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
                        Text(
                          this.name,
                          style: Styles.textStyle16,
                        ),
                        Text(
                          this.email,
                          style: Styles.textStyle17,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Follow', style: Styles.textStyle14),
                          style: ElevatedButton.styleFrom(
                              backgroundColor:  Color(0xFFFFD465),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                            minimumSize: Size(66, 24),
                        ))
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
            ],
          ),
        ));
  }
}
