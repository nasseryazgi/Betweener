import 'package:bootcamp_starter/core/util/styles.dart';
import 'package:flutter/material.dart';

class FriendAcc extends StatelessWidget {
  const FriendAcc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 9),
      child: Card(
        color: Color(0xFFE7E5F1
        ),
        margin: EdgeInsets.symmetric(horizontal: 42),
        child: ListTile(
          leading: Icon(Icons.person),
          title: Text('AHMED ALI' , style: Styles.textStyle14,),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),

        ),
      ),
    );
  }
}
