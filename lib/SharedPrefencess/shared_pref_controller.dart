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

  Future<void> initPrefancess() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<void> save({required Link links}) async {
    await _sharedPreferences.setBool(Prefkeys.loggedIn.name, true);
    await _sharedPreferences.setInt(Prefkeys.id.name, links.id);
    await _sharedPreferences.setInt(Prefkeys.userId.name, links.userId);
    await _sharedPreferences.setString(Prefkeys.username.name, links.username);
    await _sharedPreferences.setString(Prefkeys.link.name,'Bearer ${links.link}');
    await _sharedPreferences.setInt(Prefkeys.isActive.name, links.isActive);
  }

  bool get loggedIn =>
      _sharedPreferences.getBool(Prefkeys.loggedIn.name) ?? false;

  String get token => _sharedPreferences.getString(Prefkeys.link .name)?? ""  ;

  Future<bool> clear() async => _sharedPreferences.clear();
}
