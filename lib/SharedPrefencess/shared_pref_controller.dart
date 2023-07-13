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


  Future<void> saveToken(String token , {int ?userId, String ? name}) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString(Prefkeys.link.name, 'Bearer $token');
    if (userId != null) {
      await sharedPreferences.setInt(Prefkeys.userId.name, userId);
    }

    if (name != null) {
      await sharedPreferences.setString(Prefkeys.username.name, name);
    }
  }
  Future<String?> getToken() async {
    final sharedPrefController = SharedPrefController();
    await sharedPrefController.initPreferences();
    return sharedPrefController.token;
  }


  bool get loggedIn =>
      _sharedPreferences.getBool(Prefkeys.loggedIn.name) ?? false;

  String get token => _sharedPreferences.getString(Prefkeys.link .name)?? ""  ;
  int ?get userId =>
      _sharedPreferences.getInt(Prefkeys.userId.name);
  String? get name =>
      _sharedPreferences.getString(Prefkeys.username.name);
  Future<bool> clear() async => _sharedPreferences.clear();
}
