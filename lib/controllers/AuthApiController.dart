import 'dart:convert';

import 'package:http/http.dart' as http;

import '../SharedPrefencess/shared_pref_controller.dart';

class AuthApiController {
  Future<String> getUserToken({required String email, required String password}) async {
    final String uri = "http://osamapro.online/api/login";
    var url = Uri.parse(uri);


    Map<String, String> header = {
      'Content-Type': 'application/json',
    };

    try {
      final response = await http.post(Uri.parse(uri), body: {"email": email, "password": password});

      if (response.statusCode == 200) {
        final responseJson = json.decode(response.body);
        final String token = responseJson['token'];

        final sharedPrefController = SharedPrefController();
        await sharedPrefController.initPreferences();
        await sharedPrefController.saveToken(token);

        return token;
      } else {
        throw Exception('Failed to get user token');
      }
    } catch (e) {
      throw Exception('Failed to connect to the API');
    }
  }
}
