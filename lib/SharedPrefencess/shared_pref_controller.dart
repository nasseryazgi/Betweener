import 'package:bootcamp_starter/models/link_model.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
enum Prefkeys { id,
  title,
  link,
  username,
  isActive,
  userId,
  createdAt,
  updatedAt,
  loggedIn}

class SharedPrefController {
  static final SharedPrefController _instance = SharedPrefController._();

  SharedPrefController._();

  late SharedPreferences _sharedPreferences;

  factory SharedPrefController() {
    return _instance;
  }

  Future<void> initPreferences() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }


  Future<void> saveToken(String token) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString(Prefkeys.link.name, 'Bearer $token');
  }


  bool get loggedIn =>
      _sharedPreferences.getBool(Prefkeys.loggedIn.name) ?? false;

  String get token => _sharedPreferences.getString(Prefkeys.link .name)?? ""  ;

  Future<bool> clear() async => _sharedPreferences.clear();
}
