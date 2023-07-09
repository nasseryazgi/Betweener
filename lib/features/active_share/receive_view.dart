import 'package:bootcamp_starter/core/util/assets.dart';
import 'package:bootcamp_starter/core/util/styles.dart';
import 'package:bootcamp_starter/features/active_share/widgets/friendAcc.dart';
import 'package:bootcamp_starter/features/freind_profile/friend_profile.dart';
import 'package:bootcamp_starter/features/home/home_view.dart';
import 'package:bootcamp_starter/features/main_app/widgets/custom_floating_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReceiveView extends StatefulWidget {
  static String id = '/receiveView';

  const ReceiveView({super.key});

  @override
  State<ReceiveView> createState() => _ReceiveViewState();
}

class _ReceiveViewState extends State<ReceiveView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 47,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 101),
            child: Text(
              'Active Sharing',
              style: Styles.textStyle15,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 127, left: 113),
            child: SvgPicture.asset(AssetsData.share),
          ),
          SizedBox(
            height: 34.18,
          ),
          FriendAcc(),
          FriendAcc(),
          FriendAcc(),
        ],
      ),
      bottomNavigationBar: CustomFloatingNavBar(
          currentIndex: 1,
          onTap: (index) {
            if (index == 0) {
              setState(() {
                Navigator.pushNamed(context, HomeView.id);
              });
            } else if (index == 1) {
              setState(() {
                Navigator.pushNamed(context, ReceiveView.id);
              });
            } else if (index == 2) {
              setState(() {
                Navigator.pushNamed(context, Friendprofile.id);
              });
            }
          }),
    );
  }
}
