import 'package:bootcamp_starter/features/home/widgets/CustomCardDetails.dart';
import 'package:bootcamp_starter/features/home/widgets/add_one_card.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import '../../SharedPrefencess/shared_pref_controller.dart';
import '../../core/util/assets.dart';
import '../../core/util/constants.dart';
import '../../core/util/location_service.dart';
import '../../core/util/styles.dart';

import 'package:qrscan/qrscan.dart' as scanner;

// import '../../models/position_model.dart';

class HomeView extends StatefulWidget {
  static String id = '/homeView';

  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final numOfCount = 3;

  final GlobalKey qrKey = GlobalKey(debugLabel: 'QRView');

  int? _userId;

  @override
  void initState() {
    super.initState();
    _loadUserId();
  }

  Future<void> _loadUserId() async {

    final sharedPrefController = SharedPrefController();
    await sharedPrefController.initPreferences();
    setState(() {
      _userId = sharedPrefController.userId;
      print("loading id ");
      print(_userId);
      if (_userId != null) {
        updatePosition(userId: _userId!);
      }
    });

    // setState(() {});
  }

  // Future<void> _getCurrentLocation() async {
  //   try {
  //     Position position = await determinePosition();
  //     setState(() {
  //       _currentPosition = position;
  //     });
  //   } catch (e) {
  //     print('Error: $e');
  //   }
  // }
  //
  // void _updateUserLocation() {
  //   if (_currentPosition != null) {
  //     int userId = 1; // Replace with the actual user ID
  //     String latitude = _currentPosition!.latitude.toString();
  //     String longitude = _currentPosition!.longitude.toString();
  //     updatePosition(userId: userId, latitude: latitude, longitude: longitude);
  //   }
  // }


  var index = 0;
  String result = '';
  String? scanResult;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(right: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(AssetsData.searchIcon),
                  SizedBox(
                    width: 15,
                  ),
                  InkWell(
                      onTap: () async {
                        print("user");
                        print(_userId);
                        // scanResult = await scanner.scan();
                        // setState(() {});
                      },
                      child: Image.asset(AssetsData.scanIcon)),
                ],
              ),
            ),

            SizedBox(
              height: 46,
            ),
            // Text('Barcode Result: $result'),
            Text(
              'Hello, Ahmed!',
              style: Styles.textStyle22,
            ),
            SizedBox(
              height: 35,
            ),
            Image.asset(AssetsData.myqr),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 50),
              width: double.infinity,
              height: 3,
              color: Colors.black,
            ),

            SizedBox(
              height: 50,
            ),

            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: numOfCount,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: [
                        index == numOfCount - 1
                            ? AddOneCard()
                            : CustomCardDetail(
                                title: 'FACEBOOK',
                                subTitle: '@oalshokri',
                              ),
                        SizedBox(
                          width: 25,
                        )
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
