import 'dart:convert';

import 'package:http/http.dart' as http;

import '../SharedPrefencess/shared_pref_controller.dart';

class AuthApiController {
  Future<String> getUserToken(String email, String username) async {
    final String url = "http://osamapro.online/api/login"; // Replace with the actual API endpoint for user authentication

    Map<String, String> body = {
      'email': email,
      'username': username,
    };

    Map<String, String> header = {
      'Content-Type': 'application/json',
    };

    try {
      final response = await http.post(Uri.parse(url), headers: header, body: jsonEncode(body));

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
